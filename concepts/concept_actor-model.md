# Key Reference Concept 5: Actor Model

## Definition

The Actor Model reconceptualises who performs work in software development by treating all participants—human and AI—as actors who provide information services through specific capabilities. An actor is defined not by job title, organisational position, or nature (human vs artificial) but functionally: by what capabilities they can provide and what knowledge enables those capabilities. This abstraction enables more precise reasoning about task allocation than traditional role-based thinking. Rather than asking "should developers or AI handle this?" the model asks "what capabilities does this activity require, and which actors can provide them effectively?" This functional approach dissolves confusion about AI's role in development—AI isn't a "developer" or "tester" but rather an actor that can provide capabilities when operating on formal knowledge, while being unable to provide them when tacit knowledge access is required. The determining factor is knowledge type, not capability category. The fundamental insight is that humans and AI are both actors providing capabilities, distinguished not by role categories but by asymmetric access to different knowledge types and complementary strengths and limitations.

## Actor Characteristics: Human vs AI

| Characteristic | Human Actor | AI Actor |
|----------------|-------------|----------|
| **Knowledge source** | Experience (accumulated through practice), formal education (structured learning), social learning (from colleagues and communities) | Training data (patterns in millions of examples), fine-tuning (specialisation on specific domains), context/prompts (immediate situational information) |
| **Knowledge access** | Recall (retrieving from memory), intuition (pattern recognition developed through experience), embodied understanding (knowledge integrated across experiences) | Vector similarity (statistical pattern matching), attention mechanisms (focusing on relevant input), in-context learning (adapting to immediate patterns) |
| **Unique strengths** | Novel situations (handling unprecedented problems), value judgements (weighing competing goods with no objective answer), theory building (developing coherent understanding enabling intelligent evolution) | Pattern matching at scale (recognising similarities across millions of examples), consistency (applying rules uniformly without fatigue), tireless execution (continuous operation without degradation) |
| **Critical limitations** | Cognitive load (finite working memory and attention), availability (limited hours, need rest), bias (systematic judgement distortions), knowledge silos (individual knowledge not shared) | Whether AI has "genuine understanding" is contested; produces outputs without the persistent explanatory model that enables humans to maintain systems over time; no accumulated context across sessions |
| **Theory relationship** | Can build theory through engagement with problems—developing understanding that enables intelligent system evolution | Whether AI builds anything analogous to "theory" (Naur's sense) is an open question. Current AI produces outputs based on learned patterns; whether this constitutes understanding or enables intelligent adaptation is debated. |
| **Tacit knowledge** | Can develop, hold, and apply tacit knowledge through experience—"we know more than we can tell" | Accesses tacit knowledge through dialogue—AI can elicit articulation from humans, process those articulations, and present understanding back for refinement. The relationship is mediated rather than direct. |

## Actor Suitability Factors

Actor suitability for a capability instance is determined by multiple factors:

| Factor | Description | Human-suited | AI-suited |
|--------|-------------|--------------|-----------|
| **Knowledge type** | Formal, tacit, or emergent | All three directly | Formal directly; tacit/emergent through dialogue |
| **Source type** | Systems, documents, humans, observations | All sources | Systems, documents; humans through structured interaction |
| **Interaction mode** | Structured query/response vs. negotiated/exploratory | Both | Primarily structured; iterative dialogue extends range |
| **Trust/context requirements** | Whether source yields information only through relationship or shared context | High trust contexts | Lower trust contexts; extended dialogue can build working context |

The fundamental asymmetry remains knowledge type, but source and interaction characteristics determine whether tacit knowledge is actually in play. Eliciting from an API is formal regardless of domain complexity; eliciting from a stakeholder involves tacit knowledge regardless of how structured the questions.

## Actors vs Roles: The Critical Distinction

Traditional software organisations structure around roles: developers, testers, architects, analysts, project managers. These roles bundle responsibilities based on organisational convenience and historical convention. The actor model makes a fundamental distinction between roles (organisational constructs) and actors (functional capability providers).

**Roles** are organisational positions with job titles, reporting structures, and conventional scopes. A "Software Architect" role typically includes responsibility for technical vision, design decisions, and standards enforcement. Roles persist regardless of who fills them and accumulate expectations over time.

**Actors** are functional—entities providing specific capabilities in specific contexts. The same person filling the architect role might function as multiple actors across different activities: providing synthesis capability when developing architectural vision, decision capability when evaluating alternatives, validation capability when reviewing implementations, and elicitation capability when understanding stakeholder concerns.

**Why this matters for AI integration**: AI cannot fill a role in the organisational sense—it has no job title, reports to no one, holds no authority, and accepts no accountability. But AI can provide specific capabilities as an actor. Rather than debating whether AI is a "developer" or "tester" (role questions with no clear answer), we ask which specific capabilities AI can provide effectively (functional questions with clearer answers based on knowledge requirements).

**Why this matters for task allocation**: Role-based thinking bundles capabilities in ways that may not be optimal. The architect role bundles synthesis, decision, validation, and elicitation because organisations find it convenient to assign all to senior technical positions. However, these capabilities could be distributed differently based on actual ability to provide them effectively. Making bundling explicit through the actor lens enables flexible organisation.

## Key Implications

**For understanding AI capabilities and limitations**: Whether AI develops anything analogous to Naur's "theory" is an open question—Naur wrote in 1985 before modern AI existed. What is observable: AI produces outputs based on learned patterns; humans maintain systems over time through accumulated understanding. This shapes collaboration design: activities requiring persistent understanding across modifications benefit from human leadership. The framework takes no position on AI's long-term trajectory but provides guidance for current (2024-2025) practice. Regardless of how the "understanding" debate resolves, organisations should preserve human engagement where accumulated understanding matters for system evolution.

**For task allocation decisions**: Actors should be selected based on capability requirements, not role conventions. Activities requiring theory building must have human actors regardless of whether AI could technically perform the mechanics. Activities operating on formal knowledge with clear success criteria can leverage AI actors. Activities with mixed requirements benefit from multiple actors collaborating, each providing capabilities matching their strengths. Additionally, skill maintenance must be considered: cognitive research on automation (Bainbridge, 1983) demonstrates that skills degrade without regular practice, and that operators who have monitored automated systems may lack the skills needed when manual intervention is required. This supports deliberate human engagement even in activities AI could handle, to maintain the capability for intervention when needed.

**For skill development**: Rather than training people for roles, identify which capabilities individuals need to develop. A junior developer might need to strengthen analysis capability (recognising code patterns), validation capability (testing judgement), and synthesis capability (designing coherent modules). This capability-specific development is more targeted than generic "junior developer training."

**For addressing cognitive load**: Distributing capabilities across multiple actors (human and AI) can reduce individual cognitive load. Rather than one architect holding all architectural knowledge, distribute synthesis across team members, use AI for consistency checking and pattern suggestion, and have humans focus on high-level theory building and critical decisions. This requires explicit recognition that capabilities can be distributed.

**For recognising accountability requirements**: While capabilities can be provided by either human or AI actors, accountability rests with humans. Even when AI executes decisions within defined envelopes, a human remains accountable for outcomes—including the decision to delegate and the adequacy of escalation criteria. This means AI-Led patterns require human accountability for the automation design, not just exception handling.

## Integration with Other Concepts

- [**Information Composition Taxonomy**](./concept_information-taxonomy.md): Human actors can process all three knowledge types (formal, tacit, emergent) directly. AI actors process formal knowledge directly and access tacit/emergent knowledge through dialogue with humans. Activities with high tacit composition benefit from human leadership with AI support; activities with high formal composition can be AI-led with human oversight.
- [**Theory-Building Principle**](./foundation_theory-building.md): Naur (1985) defined theory-building in terms of human cognition. Whether AI develops analogous understanding is contested. What matters for practice: humans must build theory about systems they maintain. Collaboration design should preserve human engagement at theory-building moments regardless of whether AI assists with artifact production.
- [**Transactive Memory Systems**](./foundation_transactive-memory.md): Wegner (1986) defined transactive memory for human groups. AI participates asymmetrically—as a queryable knowledge source rather than a full social participant. How AI integrates with human transactive memory systems is an emerging area.
- [**Eight-Capability Taxonomy**](./concept_capability-model.md): Capabilities operate bidirectionally—AI can use capabilities to acquire information from humans through dialogue, not just process formal inputs. AI can elicit from humans (prompting articulation), synthesise (proposing for human refinement), validate (presenting understanding for correction). The capability taxonomy identifies what operation is needed; dialogue design determines how actors collaborate to provide it.
- [**Seven-Phase SDLC Model**](./concept_seven-phase-sdlc.md): Different phases have different capability requirements and information compositions, thus benefiting from different actor mixes. Early phases require predominantly human actors due to high tacit content. Later phases enable more AI actor participation due to higher formal content.
- [**Five Collaboration Patterns**](./concept_collaboration-patterns.md): Concept 7 defines how human and AI actors work together. The patterns (Human-Only, Human-Led, Partnership, AI-Led, AI-Only) operationalise the actor model's insights about when each actor type should lead, support, or refrain from participation.
- **Escalation Mechanisms**: Concept 7 defines escalation as the mechanism enabling AI participation in activities involving tacit knowledge. When AI operates within formalised criteria and escalates uncertain cases to humans, the actor model's knowledge-access constraints are respected while enabling broader AI participation.
- [**Phase-Specific Information Composition**](./integration_phase-specific-composition.md): Phase composition determines appropriate actor mix—tacit-heavy phases need human actors, formal-heavy phases enable AI actors.

## Evidence Base

Hewitt's 1973 actor model in computer science provides computational abstraction of entities communicating through messages. Knowledge-based views of organisations establish that capabilities emerge from knowledge rather than structures. Distributed cognition research shows cognitive work distributed across agents and artifacts, validating the actor model's treatment of development as distributed work. GitHub Copilot studies showing 55% faster task completion on routine tasks validate AI strength in pattern-based generation, while higher defect rates on complex logic validate the limitation that AI lacks genuine understanding. Research on knowledge loss in teams (2-3x longer bug fix time without original authors) validates the distinction between human theory and AI pattern matching. Aviation and process control automation research provides cautionary evidence about over-automation leading to skill degradation, validating concerns about preserving human capabilities even when AI could technically perform activities.

## Validation Status

- ✓ **Conceptual coherence**: Practitioners recognise the actor vs role distinction and find it useful for reasoning about task allocation
- ✓ **Human vs AI characteristic differences**: Well-supported through capability studies and cognitive science research
- ✓ **Theory-building asymmetry**: Validated through knowledge management research and software maintenance studies
- ⚠ **Completeness of characteristics**: The six characteristics (knowledge source, access, strengths, limitations, theory relationship, tacit knowledge) capture key differences but may not be exhaustive
- ⚠ **Actor selection criteria**: The framework for choosing appropriate actors exists but hasn't been validated through controlled studies comparing actor selection approaches
- ⚠ **Capability distribution patterns**: Common patterns for distributing capabilities across actors are observed but not systematically catalogued
- ⚠ **Instance-level allocation**: Actor suitability is determined at the capability instance level, not the capability category level. A single capability step within an activity typically comprises multiple instances requiring different actors. This granularity requires validation through studies of actual allocation practices.

---

*The Actor Model provides the conceptual foundation for understanding who can provide what capabilities in software development. By characterising human and AI actors through their knowledge access and processing rather than roles or labels, the model enables systematic reasoning about appropriate task allocation throughout the SDLC. The patterns of how actors collaborate are defined separately in Concept 7.*
