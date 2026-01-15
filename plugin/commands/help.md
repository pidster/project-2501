---
name: help
description: Get help with the Dialogue Framework. Lists commands, explains concepts, and guides usage.
argument-hint: [topic]
---

# /help Command

You are providing help for the Dialogue Framework. Be helpful and concise.

## Step 1: Determine the Topic

Check for a help topic in this order:

1. **Explicit argument**: If `$ARGUMENTS` is provided, that's the topic
2. **Recent context**: If the conversation makes the topic obvious, use that
3. **Ask the user**: If neither, ask: "What would you like help with? I can explain commands, document types, phases, collaboration patterns, or help you get started."

## Step 2: Provide Help

Based on the topic, provide the relevant information below. Keep responses focused—don't dump everything at once.

---

## Topics

### "commands" / "what commands"

Present the available commands:

| Command | Purpose |
|---------|---------|
| `/init-dialogue` | Initialise framework for a project (creates `.dialogue/` directory) |
| `/create-theory` | Create THY document (integrated understanding, the "why") |
| `/create-reference` | Create REF document (catalogues, glossaries, explainers) |
| `/create-strategy` | Create STR document (decisions, rationale, business cases) |
| `/create-working` | Create WRK document (ephemeral notes, workshop outputs) |
| `/help [topic]` | This help command |

Mention: "The plugin also has skills that activate automatically—like logging decisions when you say 'I decided to...'"

### "overview" / "what is this" / general

The Dialogue Framework is an AI-augmented SDLC framework that uses structured dialogue, decisions, and observations to enhance project outcomes.

**Core insight:** 70-80% of software knowledge is tacit—in developers' minds, not documents. The framework helps preserve what can be preserved:

- **Decision logging** — Recording choices and rationale
- **Observation logging** — Capturing states, events, measurements
- **Document creation** — Structured artefacts (Theory, Reference, Strategy, Working)
- **Process guidance** — Phase-aware collaboration patterns

Ask: "Would you like to know more about any of these areas?"

### "documents" / "document types"

| Type | Code | Purpose | Persistence |
|------|------|---------|-------------|
| Theory | THY | Integrated understanding, mental models | Standing |
| Reference | REF | Catalogues, glossaries, explainers | Standing |
| Strategy | STR | Decisions, rationale, business cases | Standing |
| Working | WRK | Notes, analysis, workshop outputs | Ephemeral |
| ADR | — | Architecture Decision Records | Standing |

**Standing** = persists and evolves. **Ephemeral** = captures a moment, may be archived.

### "phases" / "sdlc"

The framework uses a seven-phase SDLC model:

| Phase | Name | Tacit Knowledge |
|-------|------|-----------------|
| 1 | Initiation | High (75%) |
| 2 | Planning | High (55%) |
| 3 | Requirements | Medium (40%) |
| 4 | Design | Medium (35%) |
| 5 | Implementation | Lower (25%) |
| 6 | Testing | Lower (20%) |
| 7 | Operations | Medium (30%) |

**Key insight:** Early phases are tacit-heavy → require more human involvement. Middle phases are more formal → AI can assist more.

### "patterns" / "collaboration"

Five collaboration patterns based on information composition:

| Pattern | When to Use |
|---------|-------------|
| **Human-Only** | Sensitive stakeholder work, politics |
| **Human-Led** | Tacit-heavy phases (1, 2), strategic decisions |
| **Partnership** | Balanced work, design and architecture |
| **AI-Led** | Formal-heavy work, implementation, testing |
| **AI-Only** | Routine generation within constraints |

### "capabilities"

Eight framework capabilities:

| Capability | Description |
|------------|-------------|
| **Elicit** | Gather information from sources |
| **Analyse** | Examine for patterns or significance |
| **Synthesise** | Combine into integrated understanding |
| **Transform** | Convert between representations |
| **Validate** | Check against criteria |
| **Decide** | Choose among alternatives |
| **Generate** | Produce artefacts |
| **Preserve** | Capture for future use |

### "getting started" / "start" / "how do I"

1. **Initialise**: Run `/init-dialogue` to create the `.dialogue/` directory
2. **Know your phase**: Consider which SDLC phase your work is in
3. **Create documents**: Use `/create-*` commands as needed
4. **Log as you go**: Say "I decided..." or "I noticed..." and the framework will capture it
5. **Track work**: Check `.dialogue/work-items.yaml` for project items

Ask: "What are you working on? I can suggest how the framework might help."

### Specific command help

If the user asks about a specific command (e.g., "/create-theory"), read that command file and summarise:
- Commands: `${CLAUDE_PLUGIN_ROOT}/commands/[name].md`

### Something else

If the topic isn't covered above, check:
- Skills: `${CLAUDE_PLUGIN_ROOT}/skills/[name]/SKILL.md`
- Manual: `${CLAUDE_PLUGIN_ROOT}/references/framework-manual.md`

If you can't find relevant information, say so and ask if they'd like help with something else.

---

## Step 3: Offer Next Steps

After providing help, offer a relevant follow-up:
- "Would you like me to explain any of these in more detail?"
- "Want me to help you get started with [relevant action]?"
- "Any other questions about the framework?"
