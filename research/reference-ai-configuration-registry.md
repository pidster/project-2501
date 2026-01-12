# Reference: AI Configuration and Integration Registry

*A point-in-time reference document cataloguing mechanisms for configuring and integrating AI development assistants. Last updated: January 2026.*

---

## Purpose

This document catalogues the emerging ecosystem of AI configuration and integration mechanisms—the files, protocols, and patterns through which humans configure and interact with AI development assistants. It serves as:

1. **Practitioner reference**: Understanding available configuration mechanisms
2. **Framework integration**: How these mechanisms relate to collaboration patterns and escalation design
3. **Pattern identification**: Common approaches across diverse tools
4. **Evolution tracking**: Documenting the state of practice for future comparison

**Note**: This ecosystem evolves rapidly. This document represents a point-in-time snapshot. Verify current capabilities against vendor documentation.

---

## Configuration File Mechanisms

Configuration files are standing documents that specify AI assistant behaviour, constraints, and context.

### Project-Level Configuration

| File | Tool | Purpose | Scope |
|------|------|---------|-------|
| `CLAUDE.md` or `.claude/CLAUDE.md` | Claude Code | Project instructions, coding conventions, domain context | Per-project |
| `.cursorrules` | Cursor | Editor AI behaviour rules | Per-project |
| `copilot-instructions.md` | GitHub Copilot | Custom instructions for code suggestions | Per-project |
| `.github/copilot-instructions.md` | GitHub Copilot | Repository-level copilot configuration | Per-repository |
| `AGENTS.md` | Various multi-agent frameworks | Multi-agent system configuration | Per-project |

### User-Level Configuration

| File | Tool | Purpose | Scope |
|------|------|---------|-------|
| `~/.claude/CLAUDE.md` | Claude Code | User-wide instructions | Per-user |
| `~/.config/cursor/settings.json` | Cursor | User preferences and AI settings | Per-user |
| VS Code settings | GitHub Copilot | User-level copilot configuration | Per-user |

### Organisation-Level Configuration

Some tools support organisation-wide configuration:
- GitHub Copilot for Business/Enterprise policy settings
- Cursor team configurations
- Custom API wrappers with shared prompts

### Configuration Content Patterns

**Standing instructions** (persistent across sessions):
- Coding conventions and style guides
- Domain vocabulary and terminology
- Architectural patterns to follow
- Security and compliance constraints
- Output format preferences

**Contextual information** (project-specific knowledge):
- System architecture descriptions
- Key abstractions and their purposes
- Common patterns in the codebase
- Integration points and dependencies

**Behavioural constraints** (guardrails):
- Files or directories to never modify
- Operations requiring confirmation
- Escalation triggers
- Trust boundaries

### Framework Connection

Configuration files represent formalisation of collaboration patterns:
- **Standing instructions** → Automation design (what AI should do without asking)
- **Behavioural constraints** → Escalation criteria (when to involve humans)
- **Contextual information** → 3S2P context provision (Scope, Situation, System, Phase, Process)

---

## Integration Protocols

### Model Context Protocol (MCP)

**Purpose**: Standardised protocol for connecting AI assistants to external tools and resources.

**Components**:
- **MCP Servers**: Provide tools (callable functions) and resources (readable content)
- **MCP Clients**: AI assistants that consume server capabilities
- **Transport**: stdio, HTTP/SSE, or WebSocket connections

**Configuration locations**:
- `.mcp.json` at project root
- `~/.claude/settings.json` for Claude Code
- Tool-specific configuration files

**Capability categories**:
- File system access (read, write, search)
- Database queries
- API integrations
- Custom tool implementations

**Framework connection**: MCP defines Tool Access dimension of AI actor differentiation model.

### Agent Skills and Capabilities

**Purpose**: Modular capability extensions for AI assistants.

**Patterns**:
- Skill definitions with trigger conditions
- Capability declarations with scope boundaries
- Tool access specifications
- Resource access patterns

**Example** (Claude Code skills):
```
Skill invocation:
- Trigger: User request matches skill description
- Action: Skill content injected into conversation
- Scope: Defined by skill configuration
```

**Framework connection**: Skills map to capability profiles in actor differentiation model.

### Custom Slash Commands

**Purpose**: User-defined operations that expand to full prompts.

**Patterns**:
- Command file with template prompt
- Argument substitution
- Workflow automation
- Reusable patterns

**Example locations**:
- `.claude/commands/*.md` for Claude Code
- Custom command directories for other tools

**Framework connection**: Commands represent formalised capability flow specifications.

### Context Injection Patterns

**Purpose**: Mechanisms for providing dynamic context to AI assistants.

**Methods**:
- File content retrieval and injection
- Database query results
- API response inclusion
- Environment variable interpolation
- Dynamic document generation

**Considerations**:
- Context window limitations
- Relevance filtering
- Freshness management
- Security boundaries

---

## Hook and Event-Driven Integration

### AI Assistant Hooks

Claude Code and similar tools support event-driven hooks:

| Hook Event | Trigger | Use Cases |
|------------|---------|-----------|
| `PreToolUse` | Before any tool execution | Validation, logging, permission checks |
| `PostToolUse` | After tool execution | Result processing, side effects |
| `SessionStart` | At session beginning | Context loading, state initialisation |
| `SessionEnd` | At session conclusion | Cleanup, summary generation |
| `UserPromptSubmit` | When user submits input | Input validation, preprocessing |
| `Stop` | When agent completes | Output validation, notifications |

**Hook implementation patterns**:
- Shell script execution
- Prompt-based validation (AI evaluates condition)
- External service calls
- State management

**Framework connection**: Hooks implement escalation criteria and accountability documentation.

### Git Hooks

Standard git hooks applicable to AI-assisted development:

| Hook | Trigger | AI-Relevant Uses |
|------|---------|------------------|
| `pre-commit` | Before commit creation | Code quality validation, AI-generated code review |
| `commit-msg` | Commit message creation | Message format validation, content checking |
| `pre-push` | Before push execution | Final validation, security checks |
| `post-commit` | After commit completion | Documentation updates, notifications |

**Integration patterns**:
- AI output validation before commit
- Provenance annotation in commit messages
- Human review gates for AI-generated changes

### CI/CD Hooks

Pipeline integration points:

| Hook Type | Mechanism | AI-Relevant Uses |
|-----------|-----------|------------------|
| Build triggers | Pipeline execution on events | AI-assisted code analysis |
| Quality gates | Pass/fail criteria | AI output validation thresholds |
| Deployment gates | Human approval steps | Escalation for AI-led changes |
| Notification hooks | External service callbacks | Alerting on AI actions |

**Framework connection**: CI/CD hooks implement accountability documentation and outcome review.

### IDE/Editor Hooks

Editor integration events:

| Hook | Trigger | AI-Relevant Uses |
|------|---------|------------------|
| On-save | File save | Auto-formatting, AI suggestion triggers |
| On-type | Character input | Real-time AI suggestions |
| On-focus | Editor focus change | Context refresh |
| Diagnostic | Error/warning detection | AI-assisted fix suggestions |

---

## Emerging Patterns

### Configuration Hierarchy

Most tools implement hierarchical configuration:

```
Organisation policies
    └── User preferences
            └── Project configuration
                    └── Session/conversation context
```

Higher levels provide defaults; lower levels can override (within permission boundaries).

### Trust Boundary Models

**Tiered permissions**:
- Read-only operations (low trust requirement)
- Reversible modifications (medium trust)
- Irreversible operations (high trust, often requires confirmation)
- System-level operations (highest trust, explicit approval)

**Trust establishment mechanisms**:
- Explicit user grants
- Cumulative trust through history
- Context-based trust adjustment
- Organisation policy override

**Framework connection**: Trust boundaries map to collaboration pattern selection and escalation design.

### Standing vs Dynamic Configuration

| Type | Characteristics | Examples | Framework Mapping |
|------|-----------------|----------|-------------------|
| **Standing** | Persistent, rarely changed | CLAUDE.md, .cursorrules | Automation design, scope definition |
| **Dynamic** | Session-specific, frequently updated | Conversation context, loaded files | Situation, current context state |
| **Ephemeral** | Single-use, not persisted | Tool outputs, intermediate results | Process position, working state |

This maps to document lifecycle classification (Standing/Dynamic/Ephemeral).

### Capability Declaration Patterns

Tools increasingly support explicit capability declarations:

**Positive declarations** (what AI can do):
- Tool access lists
- Resource access permissions
- Operation scope boundaries

**Negative declarations** (what AI cannot do):
- Forbidden operations
- Protected resources
- Required escalation triggers

**Conditional declarations** (context-dependent):
- Trust-level gated permissions
- Phase-appropriate capabilities
- Actor-specific access

---

## Connection to Framework Concepts

### Mapping to 3S2P Context Model

| 3S2P Dimension | Configuration Mechanism |
|----------------|------------------------|
| **Scope** | Project configuration defining domain and boundaries |
| **Situation** | Dynamic context injection for current task |
| **System** | MCP servers, available agents, escalation pathways |
| **Phase** | Phase-aware instructions, appropriate formality |
| **Process** | Workflow position, preceding context, downstream consumers |

### Mapping to Collaboration Patterns

Configuration mechanisms implement collaboration patterns:

| Pattern | Configuration Implementation |
|---------|------------------------------|
| **Human-Only** | Operations blocked from AI access |
| **Human-Led** | AI suggestions require explicit acceptance |
| **Partnership** | AI can act with human oversight (hooks, review) |
| **AI-Led** | AI can act autonomously within boundaries (trust model) |
| **AI-Only** | Full automation with no human in loop (rare) |

### Mapping to Accountability

Configuration enables accountability through:

| Accountability Element | Configuration Mechanism |
|----------------------|------------------------|
| **Automation design** | Standing configuration documents |
| **Escalation criteria** | Hook conditions, trust boundaries |
| **Context provision** | Configuration content, MCP resources |
| **Outcome review** | Logging hooks, CI/CD gates |

---

## Evolution and Obsolescence Risk

This document describes a rapidly evolving ecosystem. Key evolution pressures:

**Standardisation trends**:
- MCP adoption across tools
- Common configuration patterns emerging
- Cross-tool compatibility increasing

**Divergence pressures**:
- Tool-specific innovations
- Competitive differentiation
- Different architectural choices

**Recommended approach**: Use this document for conceptual understanding and pattern recognition. Verify specific mechanisms against current vendor documentation before implementation.

---

## Validation Status

- ⚠ **Currency**: Point-in-time snapshot; ecosystem evolves rapidly
- ⚠ **Completeness**: Covers major tools and patterns; emerging tools may not be represented
- ⚠ **Accuracy**: Based on public documentation; implementation details may vary
- ⚠ **Framework mapping**: Conceptual connections to framework; not empirically validated

---

*This reference document supports the AI-Augmented SDLC Framework by cataloguing how collaboration patterns and agent context are configured in practice. The mechanisms described here represent the operational manifestation of framework concepts.*

---

## Document History

**Version 1.0** (12 January 2026)
- Initial registry creation
- Coverage of major configuration mechanisms
- Framework integration analysis
