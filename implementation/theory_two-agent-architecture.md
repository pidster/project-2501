---
id: THY-005
type: THY
title: Two-Agent Architecture for AI-Augmented SDLC
scope: Project
temporal_class: Standing
status: DRAFT
version: 1
created: 2026-02-06
author: human:pidster

references:
  - id: THY-004
    relationship: SYNTHESISES
  - id: THY-003
    relationship: SYNTHESISES
  - id: THY-006
    relationship: SYNTHESISES
  - id: C-2
    relationship: REFERENCES
  - id: C-5
    relationship: REFERENCES
  - id: O-4
    relationship: REFERENCES

thy:
  covers:
    problem_mapping: true
    design_rationale: true
    modification_patterns: true
    invalidation_conditions: true

tags:
  - theory
  - architecture
  - two-agent
  - dialogue
  - process
---

# THY-005: Two-Agent Architecture for AI-Augmented SDLC

## Purpose

This document captures the integrated understanding that the framework requires two distinct agents with complementary responsibilities: a primary Dialogue Agent that faces the human and tolerates non-linear thinking, and a Process Orchestrator that manages left-to-right SDLC progression internally.

**Core thesis**: A single agent cannot simultaneously tolerate non-linear human cognition (THY-004) and enforce process coherence. The solution is architectural separation: one agent follows the human's thread (providing Scope, Situation, and System awareness), while another manages phase progression and coordination (providing Phase and Process management). The context graph (THY-006) serves as their shared state.

---

## 1. Problem Mapping

*What real-world concern does this theory address?*

### The Single-Agent Tension

A single AI agent assisting with SDLC work faces contradictory demands:

| Demand | Source | Implication |
|--------|--------|-------------|
| Follow the human's non-linear thinking | THY-004 | Never redirect; never enforce sequence; map silently |
| Maintain process coherence | SDLC phases | Track readiness; enforce gates; prevent drift |
| Capture tacit knowledge at windows | THY-003/THY-004 | Respond to human's articulation patterns |
| Coordinate parallel work | THY-006 | Monitor conflicts; maintain coherence |
| Present a simple UX | Adoption | One conversation partner; minimal cognitive load |

A single agent attempting all five creates tension: should it interrupt a productive non-linear exploration to note a phase gate? Should it enforce process when the human is mid-insight? The answer is architectural: separate the concerns.

### The Strategic Plumbing Bet

The framework positions itself as infrastructure—the plumbing that enables AI-augmented development. This means:
- The framework itself should be invisible during normal use
- Process management should happen beneath the surface
- The human should experience natural conversation, not framework compliance
- Infrastructure concerns (phase tracking, coordination, coherence) are handled internally

This is the strategic bet: layers above infrastructure (specific methodologies, team practices, project types) can build on this foundation without the framework imposing itself on every interaction.

### The UX Concentration Insight

Human cognitive capacity for managing AI interactions is limited. Multiple agents competing for attention creates:
- Context-switching overhead
- Unclear accountability ("which agent do I talk to?")
- Fragmented conversation history
- Increased cognitive load

The insight: concentrate human-facing UX in a single agent. All other agents operate internally, surfacing to the human only through the primary agent when human input is genuinely needed.

---

## 2. Design Rationale

*Why two agents? Why this specific split?*

### Why Two Agents, Not One

| Single Agent Problem | Two-Agent Solution |
|---------------------|-------------------|
| Cannot simultaneously tolerate non-linearity and enforce sequence | Dialogue Agent tolerates; Orchestrator enforces |
| Conversation tone conflicts with process management | Dialogue Agent is conversational; Orchestrator is structured |
| Capture windows require full attention to human thread | Dialogue Agent focuses on human; Orchestrator handles process |
| Process state management adds cognitive complexity | Orchestrator manages state without burdening conversation |

### Why Decoupling Enables Simplicity

Paradoxically, two agents create a simpler system than one overloaded agent:

- **Dialogue Agent** can be purely responsive to the human's thread
- **Process Orchestrator** can be purely systematic about process management
- Neither needs to compromise its primary function for the other's concerns
- The boundary between them is clean: human-facing vs. internal

### The Message Boundary

The Process Orchestrator communicates with the human exclusively through the Dialogue Agent:

```
Human ←→ Dialogue Agent ←→ Process Orchestrator
                              ↕           ↕
                        Context Graph   Sub-Agents
```

**Escalation protocol**: When the Orchestrator needs human input, it sends a structured escalation to the Dialogue Agent, which translates it into natural conversation. The human's response flows back through the Dialogue Agent in structured format.

**Non-escalation**: For routine process management (phase tracking, readiness assessment, coordination monitoring), the Orchestrator operates silently. The Dialogue Agent has awareness of process state but does not surface it unless relevant to the human's current thread.

### The 3S2P Split

The framework's operational concerns decompose into five areas. These split naturally between the two agents:

| Area | Agent | Rationale |
|------|-------|-----------|
| **Scope** (what the project covers) | Dialogue Agent | Emerges through conversation; human-articulated |
| **Situation** (current context and state) | Dialogue Agent | Perceived through dialogue; human-contextual |
| **System** (the framework's concepts and structure) | Dialogue Agent | Applied in conversation; human-facing |
| **Phase** (SDLC phase management) | Process Orchestrator | Tracked systematically; process-internal |
| **Process** (capability flows and coordination) | Process Orchestrator | Managed structurally; not human-facing |

### Sub-Agent Delegation Model

The Process Orchestrator delegates specific work to sub-agents:

| Sub-Agent | Function | Invocation |
|-----------|----------|------------|
| **Process Architect** | Design capability flow specifications | Task tool; returns specification |
| **Process Executor** | Execute capability flow processes | Task tool; returns execution outcome |

These existing agents (already defined in the framework) become sub-agents under the Orchestrator's coordination. They do not interact with the human directly—escalations flow through the Orchestrator to the Dialogue Agent.

### Existing Agents as Sub-Agents

The Process Architect and Process Executor were designed as independent agents. Under the two-agent architecture, they retain their full capabilities but operate within a delegation hierarchy:

```
Dialogue Agent (human-facing)
    └── Process Orchestrator (internal)
            ├── Process Architect (design)
            └── Process Executor (execution)
```

This hierarchy means:
- Sub-agents receive context from the Orchestrator, not from the human directly
- Sub-agent outputs are reviewed by the Orchestrator before reaching the human
- Escalations from sub-agents go to the Orchestrator first

---

## 3. Modification Patterns

*How should the architecture evolve? What should modifiers recognise?*

### Pattern: Adding Sub-Agents

**Recognise this situation**: A new capability requires a specialised agent (e.g., a testing agent, a documentation agent).

**Apply this understanding**:
1. New agents should be sub-agents under the Process Orchestrator
2. They should NOT be human-facing (preserve UX concentration)
3. They communicate through the Orchestrator's delegation protocol
4. They have access to the context graph for shared state

**Coherent addition**: Sub-agent that operates internally, receives context from Orchestrator, returns structured results.

**Incoherent addition**: Agent that directly addresses the human; agent that bypasses the Orchestrator; agent that maintains its own state outside the context graph.

### Pattern: Extending Primary-to-Process Protocol

**Recognise this situation**: New types of escalation or communication are needed between the Dialogue Agent and Process Orchestrator.

**Apply this understanding**:
1. Escalations flow Orchestrator → Dialogue Agent (never the reverse for process matters)
2. The Dialogue Agent can query process state but does not direct process management
3. New escalation types should follow the existing structured format (type, severity, context, question, options, recommendation)
4. Non-escalation communication (status updates) should be minimal and non-interrupting

**Coherent extension**: New escalation type with structured format that the Dialogue Agent can translate naturally.

**Incoherent extension**: Direct process commands from Dialogue Agent to Orchestrator; escalations that require framework vocabulary.

### Pattern: Context Graph as Shared State

**Recognise this situation**: Both agents need access to the same information.

**Apply this understanding**:
1. Neither agent owns the context graph exclusively
2. Both read from the graph; both write to the graph
3. The graph is the coordination substrate (THY-006), not a private data store
4. Write conflicts are resolved by the Orchestrator's coordination monitoring

**Coherent use**: Both agents treating the graph as shared, queryable state with no ownership assumptions.

**Incoherent use**: One agent "owning" certain graph regions; agents maintaining private state that should be shared.

### Anti-Pattern: Bypassing the Two-Agent Boundary

| Anti-Pattern | Why It Fails | What to Do Instead |
|--------------|--------------|-------------------|
| **Sub-agent talks to human directly** | Breaks UX concentration; fragments conversation | Route through Dialogue Agent |
| **Dialogue Agent manages process state** | Conflates non-linear tolerance with sequential management | Delegate to Orchestrator |
| **Orchestrator sends framework jargon to human** | Violates progressive disclosure (THY-004) | Escalate via Dialogue Agent which translates |
| **New agent operates outside hierarchy** | Creates coordination blind spots | Register as sub-agent under Orchestrator |
| **Agents maintain separate state** | Breaks shared substrate (THY-006) | Use context graph as shared state |

---

## 4. Evolution Conditions

*What would change this architecture?*

### Core Assumptions

| Assumption | If Challenged | Response |
|------------|---------------|----------|
| **Single human-facing agent is optimal** | Humans become comfortable managing multiple agents | Allow optional direct access; preserve single-agent default |
| **Context windows are insufficient for full project** | Context windows grow to hold entire project state | Simplify architecture; may reduce need for graph-mediated coordination |
| **Process management must be internal** | Humans want visible process control | Expose process dashboard alongside conversation |
| **Two agents sufficient** | Complexity requires finer decomposition | Add sub-agents; preserve two-layer hierarchy |

### Temporal Qualification

This architecture addresses the framework's current state (early 2026), where:
- AI context windows are large but insufficient for full project state
- Multi-agent coordination is possible but immature
- Human-AI interaction is primarily conversational
- Single-conversation UX is the dominant pattern

Future developments (persistent agent memory, sophisticated multi-agent UX, visual process management) would modify the architecture but preserve the core insight: separate human-facing concerns from process management concerns.

---

## Document Relationships

| Document | Relationship to THY-005 |
|----------|------------------------|
| [THY-004](./theory_non-linear-cognition.md) | Synthesised: provides the non-linearity that the Dialogue Agent must tolerate |
| [THY-003](./theory_conversation-as-tms.md) | Synthesised: provides TMS mechanism that both agents operationalise |
| [THY-006](./theory_context-graph-substrate.md) | Synthesised: provides the shared state substrate for both agents |
| [C-2 Capability Model](../concepts/concept_capability-model.md) | Referenced: capabilities exercised by sub-agents |
| [C-5 Collaboration Patterns](../concepts/concept_collaboration-patterns.md) | Referenced: patterns determine human involvement levels |
| [O-4 Observation Tracking](../concepts/concept_decision-observation-tracking.md) | Referenced: logging mechanism shared by both agents |

---

## Validation Status

- ✓ **Problem mapping**: Single-agent tension clearly identified with architectural resolution
- ✓ **Design rationale**: 3S2P split and UX concentration justified
- ✓ **Modification patterns**: Sub-agent addition and protocol extension guidance provided
- ⚠ **Empirical validation**: Theoretical; agent interaction patterns not yet tested
- ⚠ **Completeness**: Communication protocol details will emerge during implementation

---

*This document captures the insight that AI-augmented SDLC requires architectural separation between human-facing dialogue and internal process management. The two-agent architecture enables both non-linear thinking tolerance and process coherence without compromising either, using the context graph as shared operational substrate.*

---

**Document History**:
- v1 (6 February 2026): Initial draft capturing two-agent architecture for AI-augmented SDLC
