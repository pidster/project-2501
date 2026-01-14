# Framework Generation Model

**Purpose**: Explains how the AI-Augmented SDLC Framework is generated for different tool environments.

---

## Generation Architecture

The framework is *generated* for each tool environment from generation artifacts:

```
implementation/                    Tool-specific directories
┌────────────────────┐            ┌────────────────────┐
│ Schemas            │            │ .claude/           │
│ (how to document)  │            │   skills/          │
│                    │            │   agents/          │
│ Registries         │──Generate──│   commands/        │
│ (tool capabilities)│            │   rules/           │
│                    │            │                    │
│ Manual             │            │ .cursor/ (future)  │
│ (operational ref)  │            │ .copilot/ (future) │
└────────────────────┘            └────────────────────┘
```

---

## Source vs Generated Artifacts

| Location | Contains | Role |
|----------|----------|------|
| `implementation/` | Schemas, registries, manual, THY/REF/STR documents | **Source** — inputs to generation |
| `.claude/` | Skills, agents, commands, hooks, rules | **Generated** — Claude Code-specific output |
| `.cursor/` (future) | Cursor-specific artifacts | **Generated** — Cursor-specific output |
| `concepts/` | Framework concepts | **Source** — conceptual foundation |

---

## Registry-Driven Generation

Each tool environment has a capability registry:

```
implementation/registries/
├── registry_claude-code.yaml    # Claude Code capabilities
├── registry_cursor.yaml         # Cursor capabilities (future)
└── registry_copilot.yaml        # Copilot capabilities (future)
```

### Registry Structure

Registries document:
- **Tool access**: What operations the tool can perform (file I/O, shell, web)
- **Context provision**: How context is supplied (project files, conversation, MCP)
- **Collaboration support**: Interaction modes, approval mechanisms, escalation
- **Configuration**: Project/user/org-level settings and hierarchy
- **Extensions**: Plugins, commands, agents, skills, hooks, rules
- **Framework mapping**: How framework capabilities map to tool features

### Using Registries

When creating framework artifacts for a tool:

1. **Consult the registry** to understand tool capabilities
2. **Design artifacts** that leverage available features
3. **Document gaps** where the tool doesn't support framework needs
4. **Implement workarounds** using the tool's extension system

---

## Claude Code Configuration Types

The Claude Code registry (`registry_claude-code.yaml`) documents these extension types:

| Type | Location | Format | Purpose |
|------|----------|--------|---------|
| **Commands** | `.claude/commands/` | Markdown + YAML frontmatter | Slash commands that expand to prompts |
| **Agents** | `.claude/agents/` | Markdown + YAML frontmatter | Subagent definitions with tool subsets |
| **Skills** | `.claude/skills/*/SKILL.md` | Markdown | Contextual guidance for tasks |
| **Hooks** | `.claude/settings.json` | JSON | Event-triggered automation |
| **Rules** | `.claude/rules/` | Markdown | Persistent behavioural guidance |
| **MCP Servers** | `.mcp.json` | JSON | External tool integrations |

### Rules Configuration

Rules provide persistent instructions that apply across sessions:

```
.claude/rules/
├── rule-name.md           # Named rule files
└── another-rule.md
```

Rules are simpler than skills—they provide standing guidance without requiring invocation. Use rules for:
- Project-wide coding standards
- Terminology conventions
- Behavioural constraints
- Domain-specific guidance

Use skills when the guidance needs:
- Explicit invocation
- Parameters or arguments
- Complex multi-step procedures

---

## Generation Process

### Step 1: Analyse Registry

Identify tool capabilities relevant to framework implementation:
- Which capabilities (Elicit, Analyse, etc.) are well-supported?
- What gaps exist?
- What extension mechanisms are available?

### Step 2: Design Artifacts

For each framework component, design tool-specific implementation:
- Dialogue skills → Claude Code skills in `.claude/skills/`
- Process flows → Agent definitions in `.claude/agents/`
- Logging → Scripts in `.dialogue/` with skills as wrappers
- Work tracking → `.dialogue/work-items.yaml` (cross-session), TodoWrite (session-level)
- Standing guidance → Rules in `.claude/rules/`

### Step 3: Generate

Create the tool-specific artifacts:
- Follow canonical formats from registry
- Avoid common pitfalls documented in registry
- Use validation tools if available

### Step 4: Validate

Use registry-documented validation tooling:
- `plugin-dev:plugin-validator` for plugin structure
- `plugin-dev:skill-reviewer` for skill quality
- Manual testing for behaviour

---

## File Naming Conventions

### Implementation Directory

Files in `implementation/` follow these naming patterns:

| Type | Pattern | Example |
|------|---------|---------|
| **Schemas** | `schema_<name>.md` | `schema_work-items.md`, `schema_document-frontmatter.md` |
| **Registries** | `registry_<tool>.yaml` | `registry_claude-code.yaml` |
| **Theory documents** | `theory_<name>.md` | `theory_framework.md` |
| **Reference documents** | `ref_<name>.md` | `ref_framework-concepts.md` |
| **Strategy documents** | `str_<name>.md` | `str_phase1-initiation.md` |
| **Manual** | `framework-manual.md` | (single file) |
| **This document** | `framework-generation.md` | (single file) |

**Note**: All typed documents use underscore after the type prefix (`schema_`, `registry_`, `theory_`, etc.). This matches the `concepts/` convention where document type is prefix (`concept_`, `foundation_`, etc.). Hyphens are used within the descriptive name portion (e.g., `registry_claude-code.yaml`).

### Concepts Directory

Files in `concepts/` use prefix patterns per CLAUDE.md:

| Type | Pattern | Example |
|------|---------|---------|
| **Concepts** | `concept_<name>.md` | `concept_information-taxonomy.md` |
| **Foundations** | `foundation_<name>.md` | `foundation_theory-building.md` |
| **Integrations** | `integration_<name>.md` | `integration_framework-architecture.md` |
| **Guidance** | `guidance_<name>.md` | `guidance_implementation.md` |
| **Examples** | `example_<name>.md` | `example_capability-flow-specifications.md` |

---

## Multi-Tool Considerations

When the framework targets multiple tools:

1. **Shared concepts remain in `concepts/`** — one source of truth
2. **Registries document differences** — capability variations explicit
3. **Generated artifacts are tool-specific** — each tool gets appropriate implementation
4. **Project instructions reference framework manual** — tool-agnostic guidance centralised

---

## Dialogue Infrastructure

The `.dialogue/` directory contains runtime artifacts for framework operation:

```
.dialogue/
├── logs/
│   ├── decisions.yaml     # Decision log (YAML stream)
│   └── observations.yaml  # Observation log (YAML stream)
├── work-items.yaml        # Persistent work item tracking
└── README.md              # Format specification
```

### Work Item Tracking

Work items are tracked at two levels:

| Level | Mechanism | Persistence | Use Case |
|-------|-----------|-------------|----------|
| **Session** | TodoWrite tool | Ephemeral | Active work during session |
| **Cross-session** | `.dialogue/work-items.yaml` | Persistent | Backlog and continuity |

**Pattern**: Load relevant items from `work-items.yaml` into TodoWrite at session start. Update `work-items.yaml` as work completes.

Schema: [schema_work-items.md](./schema_work-items.md)

---

## Document Relationships

| Document | Relationship |
|----------|-------------|
| [Framework Manual](./framework-manual.md) | Operational reference (tool-agnostic) |
| [Claude Code Registry](./registries/registry_claude-code.yaml) | Tool capability documentation |
| [THY-001](./theory_framework.md) | Framework theory |
| [Work Items Schema](./schema_work-items.md) | Work item format specification |

---

*This document explains the generation model. For operational framework guidance, see the Framework Manual.*
