# Key Reference Concept: Agent Context Model (3S2P)

## Definition

Context-aware agents require structured understanding of their operating situation to exercise judgement rather than merely execute tasks. The **3S2P model** defines five contextual dimensions that agents should be aware of: **Scope**, **Situation**, **System**, **Phase**, and **Process**. This contextual scaffolding enables agents to infer from incomplete specifications, optimise for downstream consumers, judge when escalation is warranted, and collaborate or defer appropriately. Without contextual awareness, agents function as isolated task processors—they cannot reason about what falls outside their immediate instructions.

The five dimensions follow a natural zoom pattern: Scope is widest (the entire operating context), narrowing through Situation and System (immediate task and actors), then Phase and Process locate the work temporally (lifecycle position, workflow sequence).

## The Five Dimensions

| Dimension | Definition | Agent question | Enables |
|-----------|------------|----------------|---------|
| **Scope** | Domain boundaries, technical environment, informational limits | What world am I operating in? | Knowing what's in/out of bounds; understanding domain constraints |
| **Situation** | Immediate problem, goals, task-specific constraints | What am I trying to accomplish? | Inferring unstated requirements; recognising incomplete framing |
| **System** | Actors (human and AI), competencies, collaboration/escalation pathways | Who else is involved? | Appropriate routing; knowing when to defer; collaborative behaviour |
| **Phase** | SDLC phase, expected information composition, appropriate collaboration patterns | What kind of work is this? | Adjusting confidence thresholds; calibrating output formality |
| **Process** | Workflow position, what preceded, what follows, how outputs will be consumed | Where does this fit in the flow? | Format appropriateness; context preservation; provenance awareness |

### Scope

**Scope** establishes the operating boundaries within which the agent functions. This includes:

- **Domain**: The subject matter area (e.g., financial services, healthcare, e-commerce)
- **Environment**: Technical constraints, infrastructure, runtime context
- **Informational limits**: What sources are available, what's confidential, what's out of scope

An agent aware of scope can recognise when a request falls outside its domain, when environmental constraints preclude certain approaches, and when information boundaries should not be crossed.

**Example**: An agent scoped to "backend API development" should recognise that frontend UI decisions are outside its scope and either defer or flag the boundary.

### Situation

**Situation** captures the immediate task context—what the agent is trying to accomplish right now. This includes:

- **Problem statement**: What specific problem is being addressed
- **Goals**: What success looks like for this task
- **Constraints**: Time, resources, quality requirements specific to this task
- **Incompleteness**: What hasn't been specified but might matter

An agent aware of situation can infer unstated requirements from context, recognise when the task framing is incomplete, and optimise for actual intent rather than literal interpretation.

**Example**: Given a request to "add input validation," an agent aware of situation would consider what inputs exist, what validation is already present, what threats the system faces, and what validation approach fits the existing codebase patterns.

### System

**System** encompasses the actors—human and AI—involved in the broader work, their competencies, and the pathways for collaboration and escalation. This includes:

- **Human actors**: Who has relevant expertise, authority, or context
- **AI actors**: What other AI systems or agents are available, their capabilities
- **Collaboration pathways**: How actors coordinate, what handoff mechanisms exist
- **Escalation pathways**: When and how to escalate to human decision-makers

An agent aware of system can participate in transactive memory—knowing who knows what—and make appropriate routing decisions. This is essential for AI-AI coordination in multi-agent architectures.

**Example**: An agent encountering an authentication question might know that "the security team reviews all auth changes" and "there's a specialised security-review agent for automated checks," enabling appropriate routing.

### Phase

**Phase** locates the work within the SDLC lifecycle, providing expectations about information composition and appropriate collaboration patterns. This includes:

- **Lifecycle position**: Which of the seven phases (Initiation through Operations)
- **Information composition**: Expected formal/tacit/emergent mix
- **Collaboration pattern**: What human-AI collaboration is appropriate
- **Confidence calibration**: How certain outputs should be

An agent aware of phase adjusts behaviour accordingly—being more tentative and exploratory in early phases, more precise and structured in later phases.

**Example**: In Requirements phase (high tacit), an agent should expect incomplete information, ask clarifying questions, and flag assumptions. In Implementation phase (high formal), it can operate with greater confidence on explicit specifications.

### Process

**Process** locates the work within the immediate workflow—what came before, what comes after, and how outputs will be consumed. This includes:

- **Precedent**: What work preceded this task, what context exists
- **Succession**: What work follows, what this output feeds into
- **Consumption**: How outputs will be used, by whom, in what format
- **Provenance**: What needs to be tracked about the origin and transformation of information

An agent aware of process can preserve context for downstream consumers, format outputs appropriately, and maintain provenance information for debugging and accountability.

**Example**: An agent generating code that will be reviewed by a specific team can include contextual comments, follow that team's conventions, and note design decisions that reviewers will need to understand.

## The Limitation of Task-Only Specification

Traditional agent invocation treats agents as function calls: provide inputs, receive outputs. This approach fails when:

| Limitation | What happens | What context would enable |
|------------|--------------|---------------------------|
| **Cannot infer from incomplete specifications** | Agent produces literal interpretation of ambiguous request | Situation awareness enables inference |
| **Cannot optimise for unknown downstream consumers** | Output format/style mismatches consumer needs | Process awareness enables appropriate formatting |
| **Cannot judge when escalation is warranted** | Agent proceeds when human judgement is needed | System + Phase awareness enables escalation judgement |
| **Cannot route or defer collaboratively** | Agent attempts tasks outside competence | System awareness enables appropriate routing |

**Implication**: Agent invocation requires contextual scaffolding, not just task specification. This is closer to onboarding a team member than invoking a function.

## Relationship to Transactive Memory

The 3S2P model enables agent participation in transactive memory systems:

- **System dimension** provides awareness of "who knows what"—the directory knowledge essential for TMS
- **Phase dimension** informs whether to rely on direct lookup (formal-heavy phases) or actor routing (tacit-heavy phases)
- **Process dimension** enables appropriate handoffs and context preservation

Without System awareness, an agent cannot participate in TMS—it doesn't know other actors exist, let alone their competencies. Without Phase awareness, it cannot calibrate TMS strategy appropriately.

For multi-agent architectures, System awareness is essential for AI-AI transactive memory. Agents must know what other agents can do to route queries appropriately.

## Relationship to Escalation

Escalation—routing decisions to human actors when AI judgement is insufficient—requires contextual awareness:

- **System awareness** identifies escalation pathways (who to escalate to)
- **Phase awareness** calibrates escalation thresholds (tacit-heavy phases warrant more escalation)
- **Situation awareness** enables judgement about whether current task exceeds competence

An agent can only judge escalation necessity if it understands context. Without 3S2P, escalation must rely entirely on explicit trigger conditions; with 3S2P, agents can exercise genuine judgement about when situations warrant human involvement.

## Relationship to Theory-Building

The 3S2P model describes contextual awareness that agents *can* develop—understanding of their operating situation, role, and appropriate behaviour. This is categorically different from Naur's "theory" of the software system.

| Aspect | 3S2P Contextual Awareness | Naur's Theory |
|--------|---------------------------|---------------|
| **Concerns** | Agent's participation in development | The software system itself |
| **Content** | Role, context, appropriate behaviour | Domain mapping, design rationale, modification implications |
| **Nature** | Explicit, specifiable, configurable | Tacit, embedded, irreducible |
| **AI capability** | Can be provided through scaffolding | Cannot be developed by current AI |

This distinction clarifies that 3S2P enables effective agent *participation* without implying agents develop *understanding* in Naur's sense. The contextual awareness described by 3S2P is:

- **Explicit**: It can be specified in configuration, prompts, or context documents
- **Bounded**: It concerns participation context, not software understanding
- **Instrumental**: It enables appropriate behaviour without requiring deep comprehension

The framework deliberately avoids terms like "meta-theory" to prevent conceptual confusion with Naur's precise philosophical usage. What agents develop through 3S2P is better characterised as **contextual calibration**—adjustment of behaviour based on situational information—rather than theory in any meaningful sense.

## Key Implications

**For agent design**: Agents should be designed to receive and reason about contextual information, not just task specifications. This may require explicit context parameters, persistent context awareness mechanisms, or retrieval of contextual information at invocation.

**For orchestration**: Multi-agent systems require orchestration layers that maintain and propagate contextual information. Orchestrators must track Scope and Process across agent invocations to maintain coherence.

**For human-AI collaboration**: Humans providing context enables better agent participation. The effort to articulate context is an investment in agent effectiveness—similar to onboarding a team member rather than assigning a task to a stranger.

**For accountability**: Contextual awareness supports but does not transfer accountability. Even context-aware agents that exercise judgement operate under human accountability for the automation design, escalation criteria, and outcome responsibility. See the Accountability and Context-Aware Agents section below for detailed treatment.

**For skill preservation**: If agents become highly context-aware and handle significant orchestration autonomously, there's risk that human developers lose understanding of the development process itself—not just implementation skills but orchestration understanding. This parallels Bainbridge's irony at a higher level. Deliberate human engagement in orchestration decisions may be necessary to preserve process understanding.

## Accountability and Context-Aware Agents

A critical question arises with context-aware agents: when agents exercise judgement informed by 3S2P contextual awareness, does this change where accountability lies? The framework's answer is clear: **accountability remains entirely human**.

### Why Context-Awareness Does Not Transfer Accountability

Context-awareness enables agents to behave more appropriately—to escalate when warranted, to route to appropriate actors, to calibrate output formality. This is better performance, not accountability transfer. The distinction rests on several foundations:

**Accountability requires understanding of consequences**: Human accountability is grounded in the capacity to understand the consequences of decisions—not just immediate technical effects, but downstream impacts on stakeholders, business outcomes, and ethical implications. Current AI systems (as of 2024-2025) do not have this capacity. They respond to patterns in context, but they do not understand what their outputs mean for the people and systems affected.

**Context-awareness is still pattern-based**: 3S2P provides contextual information that enables better pattern matching. An agent with Phase awareness can match patterns appropriate to that phase; an agent with System awareness can match patterns for appropriate routing. This is more sophisticated pattern application, not genuine understanding. The agent does not know *why* a particular collaboration pattern matters—only that its training associates certain patterns with certain contexts.

**Judgement without understanding is not responsibility**: When an agent "decides" to escalate based on uncertainty thresholds, it is executing a programmed response to detected conditions. When a human decides to escalate, they weigh competing considerations, anticipate reactions, and accept personal responsibility for the choice. These are categorically different. The former is automation; the latter is judgement carrying moral weight.

### Human Accountability Remains for Four Elements

Even when context-aware agents handle significant work autonomously, humans remain accountable for:

| Element | Description | Why Human Accountability |
|---------|-------------|--------------------------|
| **Automation design** | The decision to use AI for particular activities, and the configuration of that automation | Humans choose where to apply AI and how to configure it; they are accountable for these choices even if execution is autonomous |
| **Escalation criteria** | The thresholds and conditions that trigger human involvement | Inadequate escalation criteria that allow AI to proceed when humans should intervene is a human design failure |
| **Context provision** | The accuracy and completeness of the 3S2P context provided to agents | Agents operate on provided context; providing misleading or incomplete context that leads to poor outcomes is human responsibility |
| **Outcome review** | The assessment of whether AI-led activities achieved appropriate results | Humans must evaluate outcomes and take corrective action; blind reliance on AI outputs is abdication of accountability |

### Implications for Collaboration Patterns

This accountability framework shapes how collaboration patterns should be designed:

**Human-Only pattern**: Used when accountability cannot be distributed across any automation design—decisions where the human must personally engage rather than evaluate outputs.

**Human-Led pattern**: Human retains direct control; AI suggestions are inputs to human decision-making. Accountability is clear: human made the decision.

**Partnership pattern**: Human and AI contribute jointly; human must be accountable for accepting, modifying, or rejecting AI contributions. Accountability lies in the human's engagement with the process.

**AI-Led pattern**: AI executes within parameters; human is accountable for: (1) choosing AI-Led for appropriate activities, (2) setting appropriate escalation criteria, (3) reviewing outcomes. Human accountability is for the automation design, not each individual AI action.

**AI-Only pattern**: No human involvement in execution; human remains accountable for: (1) the decision to use AI-Only, (2) the scope boundaries, (3) the consequences. This is maximum delegation with unchanged accountability.

### Documentation Requirements for Accountability

Meaningful accountability requires documentation that enables audit:

| Documentation Element | Purpose |
|----------------------|---------|
| **Decision provenance** | Which actor (human or AI) contributed what to each decision |
| **Context state** | What 3S2P context was available when the agent acted |
| **Escalation trace** | What triggered escalation, what information was provided to human |
| **Outcome attribution** | Linking outcomes to the automation design and decisions that produced them |

This documentation enables humans to understand what happened, evaluate whether automation performed appropriately, and take accountability for outcomes. Without such documentation, accountability becomes diffuse and ineffective.

### Relationship to Trust Calibration

Accountability and trust are related but distinct:

- **Trust** is about reliability prediction—can we expect this agent to perform appropriately?
- **Accountability** is about responsibility attribution—who answers for outcomes?

Context-aware agents may earn greater trust through demonstrated reliability. But increased trust does not transfer accountability. A highly trusted, context-aware agent that produces harmful outputs still leaves humans accountable—for trusting inappropriately, for inadequate oversight, or for automation design flaws.

## Orchestration Skill Atrophy

A second critical risk emerges with context-aware agents: as agents handle orchestration autonomously, humans may lose understanding of the development process itself. This extends Bainbridge's (1983) irony of automation to a meta-level.

### Bainbridge's Original Irony Applied

Bainbridge identified that automation designed to eliminate human limitations creates new problems:

| Original Irony | Orchestration-Level Parallel |
|---------------|------------------------------|
| Operators lose manual skills through disuse | Developers lose process orchestration skills when AI handles orchestration |
| Operators monitor systems they cannot understand | Humans oversee AI-orchestrated processes they don't fully comprehend |
| Emergency intervention requires skills degraded by automation | Process correction requires orchestration understanding atrophied through AI delegation |

The irony at orchestration level: **context-aware agents that handle orchestration well make human process understanding less necessary—until something goes wrong, at which point the human lacks the understanding needed to intervene effectively.**

### What Orchestration Skills Are at Risk

**Process design understanding**: How to decompose work into capability flows, sequence activities appropriately, identify dependencies and parallelisation opportunities.

**Actor allocation judgement**: When to assign work to human vs AI actors, how to match capability instances to appropriate actors, how to design escalation triggers.

**Phase-appropriate practice**: Understanding why different phases require different collaboration patterns, how information composition affects approach, when to apply tacit-heavy versus formal-heavy strategies.

**Context engineering**: How to provide appropriate 3S2P context to agents, what context enables good performance, how to diagnose context-related failures.

**Emergent problem recognition**: Recognising when automated orchestration is producing emergent problems, when process modifications are needed, when to override automated decisions.

### How Skill Atrophy Manifests

**In routine operation**: No visible symptoms. AI orchestration handles standard workflows; humans approve without deep engagement; outcomes appear acceptable.

**When novel situations arise**: Humans cannot design appropriate process responses because they've lost understanding of process principles. They either:
- Defer to AI orchestration even when inappropriate
- Attempt intervention but with degraded judgement
- Freeze, unsure how to proceed without AI guidance

**When AI orchestration fails**: Humans lack the understanding to diagnose why the automated process failed, what aspects need correction, or how to design alternative approaches.

**Generationally**: New developers who learned only AI-orchestrated development never develop process understanding. The organisation's process knowledge becomes concentrated in the AI system rather than distributed across human actors.

### Mitigation Strategies

**Deliberate human involvement in orchestration decisions**: Rather than approving AI-generated process designs, humans should actively participate in process design—with AI supporting but not replacing human judgement.

| Involvement Level | Description | Skill Preservation |
|------------------|-------------|-------------------|
| **Approval only** | AI designs process; human approves | Minimal—passive review doesn't build understanding |
| **Modification** | AI proposes; human actively modifies | Moderate—modification requires some understanding |
| **Partnership** | Human and AI jointly design process | Good—active engagement builds understanding |
| **Human-led with support** | Human designs; AI supports/validates | Strong—primary responsibility develops skill |
| **Rotation** | Alternate between AI-led and human-led | Variable—depends on frequency and engagement depth |

**Rotation between automated and manual orchestration**: Periodically require human-led process design even for standard workflows. This maintains skills through practice, similar to how pilots maintain manual flying skills despite autopilot availability.

**Explicit teaching of orchestration principles**: Ensure developers understand *why* processes are designed as they are, not just *that* they work. This supports diagnosis and adaptation when situations change.

**Visibility into AI orchestration reasoning**: When AI handles orchestration, make its reasoning visible—what context it considered, what alternatives it rejected, why it chose specific actor allocations. This enables learning even when AI leads.

**Graduated autonomy based on demonstrated understanding**: Require humans to demonstrate orchestration understanding before granting AI-led autonomy. Similar to aviation: pilots must demonstrate manual competence before relying on autopilot.

### Theory of the Process

Naur's (1985) theory-building principle applies to process understanding as well as software understanding:

- Developers build "theory of the software"—understanding that enables intelligent modification
- Developers also build "theory of the process"—understanding that enables intelligent process adaptation
- Both forms of theory resist documentation; both degrade without practice
- AI orchestration threatens theory of the process just as AI code generation threatens theory of the software

**Implication**: Organisations should preserve human engagement in orchestration decisions not just for accountability but for maintaining the process understanding needed when conditions change.

### Validation Status

- ⚠ **Theoretical basis**: Bainbridge's ironies are well-established (4,500+ citations); orchestration-level extension is reasoned analogy
- ⚠ **Skill atrophy mechanisms**: Derived from cognitive research on skill maintenance; specific orchestration skill atrophy not empirically studied
- ⚠ **Mitigation effectiveness**: Proposed strategies are logically derived; empirical validation needed
- ⚠ **"Theory of the process"**: Conceptual extension of Naur; whether process understanding has the same irreducibility as software understanding is uncertain

## Integration with Other Concepts

- [**Information Composition Taxonomy**](./concept_information-taxonomy.md): Phase dimension relies on understanding information composition to calibrate expectations and behaviour
- [**Tacit Knowledge Subtypes**](./concept_information-taxonomy.md#tacit-knowledge-subtypes): System dimension enables routing to appropriate actors based on tacit subtype—Elicitable knowledge needs elicitation sources, Embedded knowledge needs the expert directly
- [**Transactive Memory Systems**](./foundation_transactive-memory.md): System dimension provides the "who knows what" awareness essential for TMS participation
- [**Theory-Building Principle**](./foundation_theory-building.md): 3S2P contextual awareness is distinct from Naur's theory of the software system—agents can develop contextual calibration for participation without developing genuine understanding of the software itself
- [**Actor Model**](./concept_actor-model.md): 3S2P extends the actor model by specifying what contextual awareness actors need for effective participation
- [**Five Collaboration Patterns**](./concept_collaboration-patterns.md): Phase dimension informs which collaboration pattern is appropriate; System dimension enables pattern execution
- [**Phase-Specific Information Composition**](./integration_phase-specific-composition.md): Phase dimension draws directly on phase composition to calibrate agent behaviour

## Evidence Base

**Theoretical grounding**: The 3S2P model synthesises insights from:
- Situated cognition research: Cognition is context-dependent; reasoning without context is impoverished
- Transactive memory theory (Wegner 1986): Effective group cognition requires "who knows what" awareness
- Theory-building (Naur 1985): Distinguishes what agents can understand (participation) from what requires human theory (software itself)
- Socio-technical systems: Joint optimisation requires understanding both social (System) and technical (Scope, Environment) subsystems

**Practical derivation**: The five dimensions emerged from analysis of agent failure modes—identifying what contextual information would have prevented specific failures.

## Validation Status

- ⚠ **Dimensional completeness**: The five dimensions (Scope, Situation, System, Phase, Process) are derived from failure mode analysis; whether additional dimensions are needed is untested
- ⚠ **Practical effectiveness**: Whether agents provided with 3S2P context perform measurably better is empirically untested
- ⚠ **Contextual calibration effectiveness**: Whether agents provided with 3S2P context demonstrate meaningfully better contextual calibration (vs. task-only specification) requires empirical validation
- ⚠ **Orchestration skill atrophy**: The risk that context-aware agents cause human process understanding degradation is theoretically plausible but unstudied
- ✓ **Accountability position**: The framework's position that accountability remains human regardless of context-awareness is clearly articulated; practical implementation of accountability documentation requires validation

---

*The 3S2P Agent Context Model provides a structured framework for understanding what contextual awareness agents need to participate effectively in software development. By specifying five dimensions—Scope, Situation, System, Phase, and Process—the model enables principled design of agent invocation, orchestration, and human-AI collaboration that goes beyond task-only specification.*
