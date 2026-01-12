# Planning: Future Work

This document tracks potential future development directions for the AI-Augmented SDLC Framework. Items here represent ideas under consideration, not committed work.

---

## Priority and Dependency Analysis

*Analysis completed: 12 January 2026*

### Item Clustering

| Cluster | Items | Nature |
|---------|-------|--------|
| **Conceptual Refinement** | 8, 10, 11, 12 | Mature framework theory |
| **Executable Manifestation** | 1, 5, 6, 7, 9 | Make framework operational |
| **Analytical/Validation** | 2, 3, 4, 13 | Test and apply framework |

### Priority Summary

| Priority | Items | Rationale |
|----------|-------|-----------|
| **P1** | 8, 11 | Foundational conceptual decisions that unblock other work |
| **P2** | 9, 10, 12 | Secondary conceptual work informed by P1 decisions |
| **P3** | 4, 5, 6 | Infrastructure (investigations complete for 5, 6) |
| **P4** | 1, 7 | Executable manifestation (depends on P3) |
| **P5** | 2, 3, 13 | Validation and application (depends on executable framework) |

### Critical Path to Executable Framework

```
8 (Actor Differentiation) → 9 (Provenance) → 5 (Decision Tracking) ─┐
                                                                     ├→ 7 (Process Architect) → 1 (Executable)
8 (Actor Differentiation) → 6 (Work Coordination) ──────────────────┘
```

### Recommended Sequencing

**Phase A: Conceptual Completion**
1. Item 11: Meta-theory decision
2. Item 8: AI actor differentiation model
3. Item 12: Accountability clarification

**Phase B: Infrastructure Design**
4. Item 9: Provenance granularity
5. Item 10: Orchestration skill atrophy
6. Item 4: AI configuration registry

**Phase C: Infrastructure Implementation**
7. Item 5: Decision/observation tracking
8. Item 6: Work coordination

**Phase D: Executable Demonstration**
9. Item 7: Process Architect agent skill
10. Item 1: Executable Framework consolidation

**Phase E: Validation & Application**
11. Items 2, 3, 13: Analytical lens, self-reference, empirical predictions

---

## Active Considerations

### 1. Executable Framework Manifestation

**Description**: Develop the framework beyond documentation into an executable form—potentially as tooling, templates, or structured guidance that can be applied directly to software projects.

**Prior exploration**: We have previously discussed creating more detail on software engineering processes and manifesting the framework in executable form.

**Potential approaches**:
- Process templates aligned with the seven-phase model
- Capability flow specifications as executable workflows
- Collaboration pattern checklists or decision trees
- Integration with existing tooling (IDE plugins, CI/CD hooks, project management)
- Structured prompts or context documents for AI assistants

**Open questions**:
- What form would be most useful? (Documentation? Tooling? Both?)
- Which parts of the framework are mature enough to operationalise?
- How to maintain alignment between executable artifacts and evolving framework concepts?

**Status**: Under consideration

---

### 2. Framework as Analytical Lens for Other Frameworks

**Description**: Use the AI-Augmented SDLC Framework as an analytical tool to evaluate other executable frameworks, methodologies, and tools—assessing how well they address tacit knowledge, theory-building, collaboration patterns, and information transitions.

**Potential applications**:
- Analyse existing methodologies (Agile, SAFe, DevOps) through the framework's concepts
- Evaluate AI coding assistants against collaboration pattern expectations
- Assess project management tools for information loss at transitions
- Compare CI/CD pipelines against phase-specific composition requirements
- Review documentation tools for standing/dynamic/ephemeral document support

**Value proposition**:
- Demonstrates framework's practical utility
- Identifies gaps in existing tools and methodologies
- Provides structured critique grounded in empirical research
- May reveal where the framework itself needs refinement

**Open questions**:
- Which frameworks/tools would be most valuable to analyse first?
- What format should analyses take? (Companion-style documents? Comparative tables?)
- How to handle frameworks that use different terminology for similar concepts?

**Status**: Under consideration

---

### 3. Framework Self-Reference and Bootstrapping

**Description**: Investigate whether the framework can achieve properties analogous to a self-hosting compiler—a compiler capable of compiling itself. This represents a notable milestone in compiler development (bootstrapping), demonstrating that the system is sufficiently complete and coherent to operate on its own constructs.

**Dimensions to explore**:

- **Self-referencing**: Can the framework's concepts describe the framework itself? (Already partially achieved via CLAUDE.md "Meta-Application Principle")
- **Self-validation**: Can the framework's validation approaches be applied to validate the framework's own claims?
- **Self-generation**: Could the framework guide an AI assistant in generating or extending framework documents according to its own principles?

**Theoretical significance**:
- A self-hosting compiler proves the language is powerful enough to express its own implementation
- A self-referencing framework would demonstrate conceptual completeness—all concepts needed to describe human-AI collaboration are present
- Self-validation would demonstrate internal consistency and falsifiability
- Self-generation would demonstrate operational maturity

**Current state**:
- CLAUDE.md already applies framework principles to framework development (partial self-reference)
- Companion analyses use consistent structure (partial self-generation template)
- Validation status sections acknowledge what's validated vs. requiring validation (partial self-validation awareness)

**Open questions**:
- What would "complete" self-reference look like? Is there a formal test?
- Can we articulate the framework's information composition (formal/tacit/emergent) for framework development itself?
- What collaboration patterns are we using to develop the framework, and do they match the framework's own recommendations?
- Could an AI generate a new concept document that meets framework standards, guided only by the framework itself?

**Risks**:
- Self-reference can lead to circular reasoning or infinite regress
- The framework may be incomplete in ways that self-reference cannot detect
- Over-focus on self-reference may distract from practical utility

**Status**: Under consideration

---

### ~~4. AI Configuration and Integration Registry~~ → COMPLETED

**Resolution** (12 January 2026): Created comprehensive reference document at `research/reference-ai-configuration-registry.md`.

**Coverage**:
- Configuration file mechanisms (project, user, organisation levels)
- Integration protocols (MCP, skills, slash commands, context injection)
- Hook and event-driven integration (AI hooks, git hooks, CI/CD, IDE)
- Emerging patterns (hierarchy, trust boundaries, standing vs dynamic)

**Framework mappings documented**:
- Configuration → 3S2P context provision
- Trust boundaries → Collaboration pattern selection
- Hooks → Escalation criteria and accountability documentation
- Standing/dynamic → Document lifecycle classification

**Format decision**: Point-in-time reference document with obsolescence warning. Conceptual patterns more durable than specific tool details.

**Moved to**: Completed Items

---

### 5. Decision and Observation Tracking System

**Description**: Design and implement mechanisms for recording observations (factual states) and decisions (judgements) throughout the SDLC, supporting traceability, accountability, and reversion analysis.

**Investigation completed**: See `research/investigation-decision-observation-tracking.md` for detailed schemas, query patterns, and design rationale.

**Key design elements**:
- **Observations** — Linear log (append-only, chronological) recording measurements, states, events, and durations
- **Decisions** — Tree structure with hierarchical relationships, dependencies, and supersession tracking
- **Actor pattern classification** — Each decision classified against collaboration patterns (Human-Only through AI-Only)
- **Policy binding** — Decisions linked to governance policies for compliance validation
- **Capability integration** — Only Decide capability produces Decision records; Preserve operates on both

**Next steps to complete**:
1. Prototype schema implementation (PostgreSQL recommended)
2. Design integration hooks for development tools (git, CI/CD, IDE)
3. Create UI mockups for decision tree visualisation and impact analysis
4. Consider domain-specific language for policy specification
5. Define incremental adoption path for existing projects

**Open questions**:
- Granularity thresholds for observation recording
- Decision compaction/archival strategy
- Cross-project decision handling
- Retroactive decision recording

**Status**: Investigation complete; implementation pending

---

### 6. Work Coordination and Actor Assignment

**Description**: Design mechanisms for coordinating work between actors (human and AI), including work item definition, assignment, interactive messaging, and queue-based distribution.

**Investigation completed**: See `research/investigation-work-coordination.md` for detailed schemas, coordination patterns, and design rationale.

**Key design elements**:
- **Work items** — Units of work with context packaging, assignment tracking, and state management
- **Two coordination paradigms**:
  - Interactive (synchronous) — real-time dialogue for Human-Led and Partnership patterns
  - Queue-based (asynchronous) — work distribution for AI-Led and parallelisable work
- **Actor profiles** — Capabilities, availability, and performance metrics for routing decisions
- **Capability matching** — Algorithm for routing work to appropriate actors
- **Conversation preservation** — Capturing tacit knowledge from interactive sessions
- **Pattern-specific coordination** — Different coordination modes for each collaboration pattern

**Connection to Item 5 (Decision/Observation Tracking)**:
- Work events generate observation records (created, assigned, completed)
- Work completion can generate decision records
- Escalations create both work items and decision contexts

**Next steps to complete**:
1. Prototype work item service (CRUD, state machine)
2. Build configurable work queues with routing
3. Implement messaging with conversation grouping
4. Build actor profile management and capability matching
5. Connect to existing tools (git, CI/CD, chat)
6. Visualise work flow and coordination health

**Open questions**:
- Conversation state limits and context degradation
- Context packaging quality measurement
- Multi-AI coordination patterns
- Human attention management (avoiding notification overload)

**Status**: Investigation complete; implementation pending

---

### 7. Process Architect Agent Skill

**Description**: A practical implementation example of the executable framework — an AI agent skill that understands the eight capabilities, framework components, and can devise processes to solve software development problems within any of the seven phases. The skill acts as a "process architect" that generates capability flow specifications for execution by other agents.

**Concept**:
- **Input**: A software development problem statement and phase context
- **Output**: A structured process specification (per `concept_process-capability-flow.md`) that can be executed by a work coordination system or execution agent

**How it works**:
1. **Problem analysis** — Understand the problem, identify the SDLC phase, assess information composition (formal/tacit/emergent)
2. **Capability decomposition** — Break the problem into required capabilities (Elicit, Analyse, Synthesise, Transform, Validate, Decide, Generate, Preserve)
3. **Actor pattern assignment** — Determine appropriate collaboration pattern for each capability instance based on knowledge requirements
4. **Flow design** — Sequence capabilities with dependencies, escalation triggers, and quality gates
5. **Process generation** — Output structured process specification for execution

**Architecture**:
```
┌─────────────────────────────────────────────────────────────┐
│                    User / Orchestrator                       │
│  "Help me design the authentication system" (Phase 4)       │
└──────────────────────────┬──────────────────────────────────┘
                           │
                           ▼
┌─────────────────────────────────────────────────────────────┐
│              Process Architect Agent Skill                   │
│  - Understands 8 capabilities                               │
│  - Knows phase information compositions                      │
│  - Can design capability flows                               │
│  - Assigns actor patterns                                    │
└──────────────────────────┬──────────────────────────────────┘
                           │ (generates process spec)
                           ▼
┌─────────────────────────────────────────────────────────────┐
│               Process Execution Agent                        │
│  - Receives structured process specification                 │
│  - Coordinates work items per Item 6                        │
│  - Tracks decisions/observations per Item 5                  │
│  - Manages human-AI handoffs                                 │
└─────────────────────────────────────────────────────────────┘
```

**Example output** (for "design authentication system"):
```yaml
process:
  id: PROC-4.AUTH
  phase: 4 (Design)
  objective: "Design authentication system architecture"

capability_flow:
  - step: 4.AUTH.1
    capability: Elicit
    description: "Gather security requirements and constraints"
    actor_pattern: Human-Led
    inputs: [stakeholder interviews, security policy docs]
    outputs: [security requirements list]

  - step: 4.AUTH.2
    capability: Analyse
    description: "Analyse authentication patterns and trade-offs"
    actor_pattern: Partnership
    inputs: [security requirements, industry patterns]
    outputs: [pattern comparison matrix]

  - step: 4.AUTH.3
    capability: Decide
    description: "Select authentication approach"
    actor_pattern: Human-Led
    escalation: "If multiple patterns score equally"
    inputs: [pattern comparison]
    outputs: [architecture decision record]

  - step: 4.AUTH.4
    capability: Generate
    description: "Generate architecture documentation"
    actor_pattern: AI-Led
    inputs: [decision record, templates]
    outputs: [auth architecture doc]

  - step: 4.AUTH.5
    capability: Validate
    description: "Validate with security team"
    actor_pattern: Human-Only
    inputs: [architecture doc]
    outputs: [validation sign-off]
```

**Implementation approach**:
- Build as Claude Code agent skill or plugin
- Skill has access to framework concepts via embedded knowledge or MCP resources
- Uses structured output to generate process specifications
- Process specs conform to `concept_process-capability-flow.md` schema

**Value proposition**:
- Demonstrates framework is executable, not just theoretical
- Provides consistent process design across teams
- Encodes framework knowledge in reusable form
- Enables human oversight of AI-generated processes before execution
- Supports Item 3 (self-reference) — framework generates processes for framework development

**Connection to other items**:
- Uses concepts from Item 1 (Executable Framework)
- Generated processes execute via Item 6 (Work Coordination)
- Execution generates records per Item 5 (Decision/Observation Tracking)
- Could analyse other frameworks per Item 2 (Analytical Lens)
- Tests framework completeness per Item 3 (Self-Reference)

**Open questions**:
- How much framework knowledge should be embedded vs. retrieved dynamically?
- How to validate generated processes before execution?
- How to handle processes that span multiple phases?
- How to learn from execution feedback to improve future process generation?

**Status**: Concept defined; implementation not started

---

### ~~8. AI Actor Differentiation Model~~ → COMPLETED

**Resolution** (12 January 2026): Developed a formal four-dimension differentiation model and integrated it into `concept_actor-model.md`.

**Model summary**:
- **Training Profile**: Underlying model capabilities (general, domain, task, or organisation specialised)
- **Tool Access**: External capabilities through integrations (retrieval, creation, communication, validation)
- **Context State**: Information currently in context window (ephemeral expertise)
- **Reasoning Profile**: Speed/depth tradeoffs and problem-solving approach

**Key outputs**:
- AI Actor Capability Profile schema for specifying what an AI actor can reliably do
- Relationship to Extended Transactive Memory (capability profiles provide AI-AI TMS directory)
- Comparison of human vs AI differentiation mechanisms
- Validation status acknowledging empirical validation needs

**Moved to**: Completed Items

---

### ~~9. Provenance Tracking Granularity~~ → COMPLETED

**Resolution** (12 January 2026): Added provenance granularity guidance to `foundation_transactive-memory.md`.

**Recommendation**: Capability Invocation Level as default granularity.

**Rationale**:
- Actor level (too coarse): Doesn't identify which operation or which AI actor
- Output token level (too fine): Overhead exceeds value for most use cases
- Capability invocation level (appropriate): Aligns with framework's capability-based reasoning, provides actionable attribution, enables meaningful reliability assessment

**Key output**: Provenance record structure defined with fields for invocation ID, actor, capability, inputs/outputs, context state, collaboration pattern, confidence, and escalation status.

**Moved to**: Completed Items

---

### ~~10. Orchestration Skill Atrophy Risk~~ → COMPLETED

**Resolution** (12 January 2026): Developed comprehensive treatment in `concept_agent-context-model.md`.

**Key analysis**:
- Extended Bainbridge's ironies to orchestration meta-level
- Identified five orchestration skills at risk (process design, actor allocation, phase-appropriate practice, context engineering, emergent problem recognition)
- Described atrophy manifestation patterns (routine, novel, failure, generational)

**Mitigation strategies developed**:
1. Deliberate human involvement (spectrum from approval-only to human-led)
2. Rotation between automated and manual orchestration
3. Explicit teaching of orchestration principles
4. Visibility into AI orchestration reasoning
5. Graduated autonomy based on demonstrated understanding

**"Theory of the process" concept**: Developed parallel to Naur's theory of the software—understanding of development process that enables intelligent adaptation, which degrades without practice.

**Moved to**: Completed Items

---

### ~~11. Meta-Theory of Participation~~ → COMPLETED

**Resolution** (12 January 2026): Decided against formalising "meta-theory" as a separate concept. The 3S2P Agent Context Model provides sufficient coverage for what agents can develop (contextual awareness enabling appropriate behaviour) without introducing terminology that risks confusion with Naur's precise philosophical usage.

**Key decisions**:
- Use "contextual calibration" instead of "meta-theory"
- 3S2P describes operational awareness that agents *can* develop through configuration
- This is categorically distinct from Naur's theory (tacit understanding that resists formalisation)
- No separate concept document needed; integrated into `concept_agent-context-model.md`

**Moved to**: Completed Items

---

### ~~12. Context-Awareness and Accountability~~ → COMPLETED

**Resolution** (12 January 2026): Clarified the accountability relationship in `concept_agent-context-model.md` with a comprehensive new section.

**Key conclusions**:
- Accountability remains entirely human regardless of context-awareness level
- Context-awareness enables better performance but not accountability transfer
- Accountability requires understanding of consequences (which current AI lacks)
- Human accountability covers: automation design, escalation criteria, context provision, outcome review

**Four elements of human accountability**:
1. **Automation design**: Choosing where to apply AI and how to configure it
2. **Escalation criteria**: Setting appropriate thresholds for human involvement
3. **Context provision**: Providing accurate 3S2P context to agents
4. **Outcome review**: Evaluating results and taking corrective action

**Pattern implications**: Each collaboration pattern carries different accountability structure, but accountability remains human in all cases—even AI-Only patterns.

**Moved to**: Completed Items

---

### 13. Phase-Dependent TMS Empirical Predictions

**Description**: Develop testable empirical predictions for the Phase-Dependent TMS hypothesis, enabling validation or refutation.

**Core hypothesis**: Transactive memory requirements scale with tacit knowledge percentage across SDLC phases.

**Testable predictions**:
1. Teams with poor TMS show greater performance deficits in early phases than late phases
2. TMS investment has higher ROI in tacit-heavy phases
3. Early-phase failures more often manifest as expertise-location problems; late-phase failures as documentation problems
4. AI can substitute for TMS in formal-heavy phases but not tacit-heavy phases
5. Tacit subtype composition (Embedded vs. Documentable) varies by phase

**Study designs to consider**:
- Cross-sectional: Compare TMS quality and phase-specific performance across teams
- Longitudinal: Track TMS development and phase outcomes over project lifecycle
- Experimental: Intervene to improve TMS and measure phase-specific impact

**Metrics needed**:
- TMS quality measurement (Lewis scale or adaptation)
- Phase-specific performance measures
- Tacit subtype assessment instruments

**Status**: Identified; methodology development not started

---

## Parking Lot

*Items noted but not yet developed into full considerations*

---

## Completed Items

*Items that have been addressed and can be referenced*

### 11. Meta-Theory of Participation (Completed 12 January 2026)

**Original question**: Should "meta-theory of participation" be formalised as a distinct concept?

**Resolution**: No. The 3S2P Agent Context Model sufficiently captures what agents can develop (contextual awareness) without introducing terminology that risks confusion with Naur's theory. The term "contextual calibration" describes what agents achieve through 3S2P—adjustment of behaviour based on situational information—without implying theory-like understanding.

**Outcomes**:
- Updated `concept_agent-context-model.md` with "Relationship to Theory-Building" section
- Established clear distinction between 3S2P (explicit, configurable) and Naur's theory (tacit, irreducible)
- Avoided "meta-theory" terminology to prevent conceptual overload

---

### 8. AI Actor Differentiation Model (Completed 12 January 2026)

**Original question**: How should AI actor differentiation be formally represented?

**Resolution**: Developed a four-dimension differentiation model integrated into `concept_actor-model.md`:

1. **Training Profile** (permanent): Model capabilities from training data, fine-tuning, architecture
2. **Tool Access** (configured): External capabilities through integrations
3. **Context State** (ephemeral): Information currently in context window
4. **Reasoning Profile** (configurable): Speed/depth tradeoffs and problem-solving approach

**Key outputs**:
- AI Actor Capability Profile schema
- Relationship to Extended TMS (profiles provide directory knowledge)
- Orchestration implications (routing logic, load balancing, fallback chains)
- Human vs AI differentiation comparison

---

### 12. Context-Awareness and Accountability (Completed 12 January 2026)

**Original question**: Does context-awareness change where accountability lies?

**Resolution**: Accountability remains entirely human regardless of context-awareness level. Context-awareness enables better agent performance but does not transfer accountability because:
- Accountability requires understanding of consequences (current AI lacks this)
- Context-awareness is still pattern-based behaviour, not genuine judgement
- Judgement without understanding does not carry moral weight

**Human accountability covers four elements**:
1. Automation design (choosing where to apply AI)
2. Escalation criteria (setting appropriate thresholds)
3. Context provision (accurate 3S2P context)
4. Outcome review (evaluating and correcting)

**Documentation added**: New "Accountability and Context-Aware Agents" section in `concept_agent-context-model.md`.

---

### 9. Provenance Tracking Granularity (Completed 12 January 2026)

**Original question**: At what level should provenance be tracked?

**Resolution**: Capability Invocation Level recommended as the default granularity. This provides:
- Alignment with the framework's capability-based reasoning
- Actionable attribution (specific operation, specific actor, specific inputs/outputs)
- Manageable overhead for typical workflows

**Provenance record structure defined** with fields for: invocation ID, timestamp, actor, capability, inputs/outputs, context state, collaboration pattern, confidence, and escalation status.

**Documentation added**: New "Provenance Tracking Granularity" section in `foundation_transactive-memory.md`.

---

### 10. Orchestration Skill Atrophy Risk (Completed 12 January 2026)

**Original question**: What is the risk that context-aware agents cause human process understanding degradation?

**Resolution**: Developed comprehensive treatment extending Bainbridge's ironies to orchestration meta-level:
- Identified five orchestration skills at risk
- Described atrophy manifestation patterns across operational contexts
- Developed mitigation strategies (involvement levels, rotation, teaching, visibility, graduated autonomy)
- Introduced "theory of the process" as parallel to Naur's theory of the software

**Documentation added**: New "Orchestration Skill Atrophy" section in `concept_agent-context-model.md`.

---

### 4. AI Configuration and Integration Registry (Completed 12 January 2026)

**Original question**: What mechanisms exist for configuring AI development assistants?

**Resolution**: Created comprehensive reference document cataloguing:
- Configuration files (CLAUDE.md, .cursorrules, copilot-instructions.md, etc.)
- Integration protocols (MCP, skills, commands, context injection)
- Hook mechanisms (AI hooks, git hooks, CI/CD hooks, IDE hooks)
- Emerging patterns (configuration hierarchy, trust boundaries, standing vs dynamic)

**Framework mappings**: Connected each mechanism type to relevant framework concepts (3S2P, collaboration patterns, accountability elements).

**Created**: `research/reference-ai-configuration-registry.md`

---

*Document created: 10 January 2026*
*Purpose: Track future development directions for the framework*
