# Dialogue Framework

## Project Identity

This project develops an AI-Augmented Software Development Lifecycle (SDLC) Framework. The core thesis: software development builds shared mental models in developers' minds, with 70-80% of knowledge being tacit. This has profound implications for AI integration across SDLC phases.

## Dialogue Framework

IMPORTANT: This project uses the Dialogue Framework (`claude-plugin-evo/`).

When working on this project:
1. Consult `claude-plugin-evo/references/framework-manual.md` for operational guidance
2. Use framework skills for logging decisions and observations
3. Check `.dialogue/tasks/` for tracked work items
4. Follow phase-specific rules in `claude-plugin-evo/rules/`

For help: use `/help` or ask "What is Dialogue?"

## Collaboration Pattern

This project operates as **Human-Led** collaboration:
- The human holds the theory — deep understanding of why concepts connect
- AI assists with elicitation, analysis, synthesis, generation, and validation
- AI-generated content is always a draft for human validation

## Key Conventions

- **British English**: organise, colour, behaviour, analyse, centre
- **Temporal qualification**: Always qualify AI capability claims (as of 2024-2025)
- **Prescriptive vs descriptive voice**: Signal transitions between modes

## Escalation Triggers

Surface decisions to the human rather than proceeding autonomously when:
- **Conceptual ambiguity**: Unclear how a concept relates to existing ones
- **Architectural impact**: Change would affect multiple documents or core concepts
- **Theoretical tension**: New content potentially conflicts with foundations
- **Scope question**: Unclear if request is in scope for current work

**Default behaviour**: When uncertain, ask rather than assume.

## Directory Overview

```
project-2501/
├── .claude/              # Claude Code configuration
├── .dialogue/            # Runtime artifacts (logs, tasks)
├── claude-plugin-evo/    # Dialogue Framework plugin
├── concepts/             # Core framework documents
├── implementation/       # Framework generation artifacts
├── papers/               # Academic sources with companion analyses
└── research/             # Reference materials
```

For detailed document catalogues, see `claude-plugin-evo/references/framework-manual.md`.
