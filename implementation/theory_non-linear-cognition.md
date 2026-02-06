---
id: THY-004
type: THY
title: Non-Linear Cognition and the SDLC Process Tension
scope: Project
temporal_class: Standing
status: DRAFT
version: 1
created: 2026-02-06
author: human:pidster

references:
  - id: THY-001
    relationship: DERIVES_FROM
  - id: THY-003
    relationship: REFERENCES
  - id: C-3
    relationship: REFERENCES

thy:
  covers:
    problem_mapping: true
    design_rationale: true
    modification_patterns: true
    invalidation_conditions: true

tags:
  - theory
  - non-linear
  - cognition
  - sdlc
  - progressive-disclosure
---

# THY-004: Non-Linear Cognition and the SDLC Process Tension

## Purpose

This document captures the integrated understanding that human cognition during software development is fundamentally non-linear, while SDLC processes impose linear structure. This tension is not a flaw to be eliminated but a design constraint to be accommodated.

**Core thesis**: Software development cognition moves non-linearly across phases, topics, and abstraction levels. Frameworks that enforce linearity suppress the very thinking patterns that produce good software. The correct response is to tolerate non-linearity while providing structural support for those who need it.

---

## 1. Problem Mapping

*What real-world concern does this theory address?*

### The Linearity Assumption

Traditional SDLC models assume work proceeds sequentially: requirements → design → implementation → testing → operations. Even agile approaches, while adding iterations, maintain this linear assumption within each iteration.

The reality: a developer discussing requirements suddenly recognises an implementation constraint. A tester's observation triggers a design rethink. An operations concern reshapes the business case. These are not failures of discipline—they are cognition working correctly.

The framework (THY-001) describes seven phases with distinct information compositions. But this describes the *structure* of information at each phase, not a mandatory sequence of activities. Phases describe information composition landscapes, not calendar-bound work periods.

### The Tacit Knowledge Self-Hosting Gap

This framework's own development revealed a critical pattern: the theory that explains why tacit knowledge resists capture was itself tacit knowledge that resisted capture. The framework existed as a coherent mental model in the human's mind before any document existed.

This self-hosting gap illustrates the broader problem:
- Frameworks that describe tacit knowledge are themselves tacit before formalisation
- The act of formalisation is non-linear—insights arrive in unpredictable order
- Forcing sequential capture of non-sequential insights degrades the output

### The Adoption UX as a Cognition Problem

Framework adoption faces a knowledge-bootstrapping paradox:
- To use the framework effectively, you need to understand its concepts
- To understand the concepts, you need to work with the framework
- Traditional documentation assumes sequential consumption: read first, apply second
- Actual adoption happens through progressive engagement: encounter a concept in context, understand it partially, deepen understanding through use

This is the same non-linearity pattern at the meta-level. The framework's own adoption must accommodate non-linear cognition.

### Agile Iterations: Bolted-On Loops, Not Native Non-Linearity

Agile methodologies addressed the linearity problem by adding iteration loops to sequential phases. But these iterations are scheduled, bounded, and still assume internal linearity within each sprint.

True non-linearity means:
- Phase-relevant thinking can emerge at any time
- Cross-phase connections happen spontaneously
- Insights do not arrive in capability order (Elicit → Analyse → Synthesise...)
- The human's thread of thought is the primary unit, not the phase or sprint

---

## 2. Design Rationale

*Why does the framework accommodate non-linearity? How does this shape its design?*

### Why Tolerate Non-Sequential Navigation

The framework's event-driven phase model (C-3) already separates phase structure from sequential execution. THY-004 articulates why this separation exists:

| Design Choice | Rationale |
|---------------|-----------|
| Phases describe information composition, not sequence | Human cognition traverses phases non-linearly |
| Capabilities are composable, not ordered | A single insight may exercise multiple capabilities |
| Backward events are valid, not exceptional | New understanding reshapes earlier conclusions |
| Phase awareness without enforcement | Knowing the current phase landscape helps without constraining |

### Why Active Tacit Capture Is Imperative

THY-003 established that conversation operates as transactive memory. THY-004 extends this: if cognition is non-linear, tacit knowledge surfaces unpredictably. Therefore:

- **Trigger-based capture** is essential: recognise when tacit knowledge is surfacing and capture it
- **Continuous logging** is wrong: it creates noise and discourages natural conversation
- **Capture windows** exist: moments when the human articulates something previously tacit
- **Window recognition** is a skill: the AI must learn to detect these moments without disrupting flow

Capture windows include:
- When the human explains "why" unprompted
- When the human connects previously separate concepts
- When the human corrects a misunderstanding with deeper context
- When the human narrates their decision-making process
- When the human expresses uncertainty about their own reasoning

### Why Progressive Disclosure Is the Correct Adoption Strategy

The knowledge-bootstrapping paradox resolves through progressive disclosure:

| Engagement Level | Framework Exposure | Rationale |
|------------------|-------------------|-----------|
| **First interaction** | None visible; natural conversation | Don't explain framework; respond naturally; offer logging conversationally |
| **Growing familiarity** | Name concepts when the human uses them | Human recognises concepts from use; naming deepens understanding |
| **Deep engagement** | Full vocabulary and structure | Human has built sufficient theory to benefit from explicit framework language |

This maps to the information composition model: early engagement is tacit-heavy; later engagement becomes more formal.

### Relationship to Event-Driven Phase Model

C-3 describes phases with associated events and information compositions. THY-004 provides the theoretical justification:

- **Forward events** (phase progression) are the primary flow
- **Backward events** (revisiting earlier phases) are epistemically necessary, not process failures
- **Cross-phase observations** (insights relevant to a different phase) should be captured, not suppressed
- **Phase drift** (gradually moving without explicit transition) is natural and should be monitored, not prevented

---

## 3. Modification Patterns

*How should the framework evolve based on this understanding?*

### Pattern: Designing for Non-Linear Navigation

**Recognise this situation**: You are building framework tools, agents, or interfaces.

**Apply this understanding**:
1. Never assume the human will consume information in order
2. Provide entry points at multiple levels of detail
3. Support "where was I?" recovery after non-linear exploration
4. Map connections between concepts for serendipitous discovery

**Coherent design**: Tools that follow the human's thread while maintaining structural awareness.

**Incoherent design**: Wizards, sequential workflows, mandatory-order tutorials.

### Pattern: Active Tacit Knowledge Capture

**Recognise this situation**: You are designing dialogue mechanisms or conversation patterns.

**Apply this understanding**:
1. Monitor for capture windows (moments of tacit surfacing)
2. Offer to capture, never mandate
3. Capture the insight in the human's language first, then optionally formalise
4. Link captured insights to the relevant phase/concept/decision

**Coherent design**: Trigger-based capture that responds to the human's articulation patterns.

**Incoherent design**: Scheduled "what did you learn?" prompts; mandatory documentation checkpoints.

### Pattern: Progressive Disclosure in Adoption

**Recognise this situation**: A new user encounters the framework for the first time.

**Apply this understanding**:
1. Start with the user's problem, not the framework's structure
2. Introduce concepts as they become relevant to the user's work
3. Never front-load framework vocabulary
4. Let the user pull concepts as needed, not push concepts on a schedule

**Coherent design**: Natural conversation that gradually introduces framework concepts as they become useful.

**Incoherent design**: Onboarding sequences, framework overview presentations, "read the docs first" instructions.

### Anti-Pattern: Forcing Sequential Compliance

| Anti-Pattern | Why It Fails | What to Do Instead |
|--------------|--------------|-------------------|
| **"Complete Phase 1 before Phase 2"** | Cognition doesn't work sequentially | Track phase state; allow parallel activity |
| **"Log every decision"** | Creates noise; discourages natural flow | Trigger-based logging at capture windows |
| **"Read the manual first"** | Bootstrapping paradox; discourages adoption | Progressive disclosure from first interaction |
| **"Follow the capability order"** | Capabilities compose; they don't sequence | Allow any capability at any time |
| **"Stay on topic"** | Non-linear connections produce insights | Follow the thread; map silently |

---

## 4. Evolution Conditions

*What would change this understanding?*

### Core Assumptions

| Assumption | If Challenged | Response |
|------------|---------------|----------|
| **Human cognition is fundamentally non-linear** | Evidence shows sequential thinking produces better outcomes | Revise tolerance model; but evidence is strong that non-linearity is productive |
| **AI context persistence is bounded** | AI develops persistent memory across sessions | Non-linearity tolerance still needed; capture urgency reduces |
| **Progressive disclosure is optimal adoption path** | Evidence shows front-loaded learning is more effective | Offer both paths; let users choose |
| **Capture windows are recognisable** | AI cannot reliably detect capture moments | Fall back to periodic prompts; accept lower capture quality |

### Temporal Qualification

This theory addresses human-AI collaboration as of 2024-2025, where:
- AI context is bounded by conversation or session
- AI cannot independently track the human's non-linear path across sessions
- The human provides continuity for non-linear threads

Future developments (persistent AI memory, cross-session thread tracking) would change the *mechanism* of non-linearity accommodation but not the *need* for it. Human cognition will remain non-linear regardless of AI capabilities.

---

## Document Relationships

| Document | Relationship to THY-004 |
|----------|------------------------|
| [THY-001](./theory_framework.md) | Parent theory; THY-004 derives from the foundation's phase model |
| [THY-003](./theory_conversation-as-tms.md) | Referenced for TMS mechanism; capture windows extend TMS externalisation |
| [C-3 Seven-Phase SDLC](../concepts/concept_seven-phase-sdlc.md) | Event-driven phase model that THY-004 provides theoretical justification for |

---

## Validation Status

- ✓ **Problem mapping**: Non-linearity tension clearly identified with self-hosting gap evidence
- ✓ **Design rationale**: Progressive disclosure and capture windows justified
- ✓ **Modification patterns**: Actionable guidance for non-linear design
- ⚠ **Empirical validation**: Theoretical; capture window effectiveness not yet measured
- ⚠ **Completeness**: Additional non-linear patterns may emerge from practice

---

*This document captures the insight that human cognition during software development is fundamentally non-linear, and that frameworks must tolerate this non-linearity rather than suppress it. The correct response is structural awareness without sequential enforcement, combined with trigger-based capture of tacit knowledge as it surfaces.*

---

**Document History**:
- v1 (6 February 2026): Initial draft capturing non-linear cognition and SDLC process tension
