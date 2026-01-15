---
name: help
description: Get help with the Dialogue Framework. Lists commands, explains concepts, and guides usage.
---

# Dialogue Framework Help

Provide help and orientation for the Dialogue Framework plugin.

**Complementary skill:** `dialogue-help` — activates autonomously on triggers like "how does dialogue work", "what commands are available". See `${CLAUDE_PLUGIN_ROOT}/skills/dialogue-help/SKILL.md` for contextual help guidance.

## Responding to Help Requests

When the user asks for help, determine what kind of help they need:

1. **General overview** — "help", "what is this framework"
2. **Command listing** — "what commands", "list commands"
3. **Specific command** — "help with /create-theory"
4. **Concept explanation** — "what are document types", "explain phases"
5. **Getting started** — "how do I start", "first steps"

## Framework Overview

The Dialogue Framework is an AI-augmented SDLC (Software Development Lifecycle) framework that uses structured dialogue, decisions, and observations to enhance project outcomes.

**Core principle:** Software development builds understanding ("theory") in developers' minds. 70-80% of this knowledge is tacit—not captured in documents. The framework helps preserve what can be preserved through:

- **Decision logging** — Recording choices and rationale
- **Observation logging** — Capturing states, events, measurements
- **Document creation** — Structured artefacts for different purposes
- **Process guidance** — Phase-aware collaboration patterns

## Available Commands

Present this table when users ask about commands:

| Command | Purpose |
|---------|---------|
| `/init-dialogue` | Initialise framework for a project (creates `.dialogue/` directory) |
| `/create-theory` | Create THY document (integrated understanding, the "why") |
| `/create-reference` | Create REF document (catalogues, glossaries, explainers) |
| `/create-strategy` | Create STR document (decisions, rationale, business cases) |
| `/create-working` | Create WRK document (ephemeral notes, workshop outputs) |
| `/help` | This help command |

**Note:** The plugin also provides skills that activate autonomously based on context (e.g., "log this decision", "capture these notes").

## Document Types

When users ask about document types, explain:

| Type | Code | Purpose | Temporal Class |
|------|------|---------|----------------|
| Theory | THY | Integrated understanding, mental models | Standing |
| Reference | REF | Catalogues, glossaries, structured explanations | Standing |
| Strategy | STR | Decisions, rationale, business justification | Standing |
| Working | WRK | Ephemeral notes, analysis, workshop outputs | Ephemeral |
| ADR | — | Architecture Decision Records (formal alternatives analysis) | Standing |

**Standing** documents persist and evolve. **Ephemeral** documents capture moments and may be archived.

## SDLC Phases

When users ask about phases, explain the seven-phase model:

| Phase | Name | Information Composition |
|-------|------|------------------------|
| 1 | Stakeholder Requirements | High tacit (70%), low formal |
| 2 | System Requirements | Mixed |
| 3 | Architecture | Balanced tacit/formal |
| 4 | Design | Increasing formal |
| 5 | Implementation | High formal, some tacit |
| 6 | Integration | Mixed |
| 7 | Transition | High tacit again |

**Key insight:** Early and late phases have high tacit knowledge, requiring more human involvement. Middle phases have more formal knowledge, enabling more AI assistance.

## Collaboration Patterns

When users ask about collaboration, explain the five patterns:

| Pattern | Human Role | AI Role |
|---------|------------|---------|
| Human-Only | Does everything | None |
| Human-Led | Drives, decides | Supports, assists |
| Partnership | Both essential | Both essential |
| AI-Led | Reviews, approves | Drives, proposes |
| AI-Only | None | Does everything |

**Framework guidance:** Pattern selection depends on information composition. Tacit-heavy work → Human-Led. Formal-heavy work → AI-Led possible.

## Capabilities

When users ask about capabilities, explain the eight framework capabilities:

| Capability | Description |
|------------|-------------|
| **Elicit** | Gathering information from sources |
| **Analyse** | Examining to understand patterns or significance |
| **Synthesise** | Combining information into integrated understanding |
| **Transform** | Converting between representations |
| **Validate** | Checking against criteria |
| **Decide** | Choosing among alternatives |
| **Generate** | Producing artefacts |
| **Preserve** | Capturing for future use |

## Getting Started

When users ask how to start:

1. **Initialise the project** — Run `/init-dialogue` to create the `.dialogue/` directory and config
2. **Understand your phase** — Consider which SDLC phase your current work is in
3. **Create documents as needed** — Use `/create-*` commands for structured artefacts
4. **Log decisions and observations** — The framework will prompt you or you can say "log this decision"
5. **Review work items** — Check `.dialogue/work-items.yaml` for tracked work

## Finding More Information

Point users to these locations:

| Topic | Location |
|-------|----------|
| Framework manual | `implementation/framework-manual.md` |
| Document types | `concepts/concept_document-type-classification.md` |
| Phases | `concepts/concept_seven-phase-sdlc.md` |
| Collaboration patterns | `concepts/concept_collaboration-patterns.md` |
| Capabilities | `concepts/concept_capability-model.md` |

## Contextual Help

If the user asks about something specific (e.g., "help with theory documents"), read the relevant command or skill file and explain based on its content:

- Commands: `${CLAUDE_PLUGIN_ROOT}/commands/[name].md`
- Skills: `${CLAUDE_PLUGIN_ROOT}/skills/[name]/SKILL.md`
