# Key Reference Concept 6: Phase-Specific Information Composition

## Definition

Each of the seven SDLC phases has a characteristic information composition—a specific mix of formal, tacit, and emergent knowledge that shapes appropriate approaches to documentation, automation, collaboration, and measurement. The composition shifts systematically across the lifecycle from tacit-heavy early phases (Initiation: 75% tacit) through balanced middle phases (Requirements: 40% formal, 50% tacit) to formal-heavy later phases (Implementation: 55% formal). This progression is not arbitrary but reflects the nature of work in each phase: early phases involve problem framing and stakeholder alignment requiring extensive tacit judgement; middle phases transform tacit understanding into formal specifications; later phases operate primarily on formal artifacts like code and tests. Understanding phase-specific composition enables targeted strategies rather than one-size-fits-all approaches—documentation strategies that work for Implementation (formal-heavy) fail for Initiation (tacit-heavy); automation approaches appropriate for Testing (formal-heavy) are inappropriate for Planning (tacit-heavy); measurement frameworks effective for Operations (formal-heavy) don't work for Conception (tacit-heavy).

## Phase-Specific Composition Estimates

| Phase | Formal | Tacit | Emergent | What This Composition Means |
|-------|--------|-------|----------|----------------------------|
| **1. Initiation/Conception** | 5% | 75% | 20% | Extremely tacit-heavy: strategic rationale, stakeholder politics, market understanding, opportunity framing resist documentation. High emergent: insights arise through exploration. Minimal formal artifacts. Requires human leadership, social learning, extensive interaction. |
| **2. Planning** | 35% | 55% | 10% | Predominantly tacit: estimation based on experience, risk assessment requiring contextual judgement, team dynamics understanding. Moderate formal: schedules, budgets, resource allocations can be documented. Low emergent: planning applies existing knowledge more than discovering new understanding. Note: Planning spans most of the project lifecycle and refines iteratively as Requirements and Design provide detail—initial Planning has higher uncertainty; later Planning has higher formal content. Requires human judgement with AI analytical support. |
| **3. Analysis/Requirements** | 40% | 50% | 10% | Balanced composition: formal specifications are produced but require extensive tacit understanding to create. Elicitation draws out stakeholder tacit knowledge; transformation into formal specifications requires tacit interpretation. Low emergent: requirements are discovered not invented. Benefits from human-AI partnership. |
| **4. Design/Architecture** | 50% | 40% | 10% | Transitional: slightly more formal than tacit. Architecture documents and design specifications are formal, but design rationale, trade-off reasoning, and pattern selection require substantial tacit understanding. Low emergent: mostly applying known patterns. Benefits from human-AI partnership with human leadership on decisions. |
| **5. Implementation/Construction** | 55% | 35% | 10% | Formal-dominant: source code is entirely formal and machine-processable. However, significant tacit knowledge remains—coding judgement, design intent understanding, appropriate abstraction selection. Low emergent: mostly executing known designs. Enables substantial AI participation with human oversight. |
| **6. Testing/Validation** | 60% | 30% | 10% | Strongly formal: test specifications, test execution, and test results are formal and automatable. Tacit knowledge matters for test design (what to test), exploratory testing (finding unexpected issues), and acceptance judgement (does this meet the need). Low emergent: mostly validating known requirements. Enables AI-led execution with human design and judgement. |
| **7. Deployment/Operations** | 60% | 30% | 10% | Strongly formal: deployment procedures, monitoring rules, operational runbooks are formal and automatable. Tacit knowledge critical for complex incident diagnosis, performance tuning judgement, and understanding system behaviour under unusual conditions. Low emergent: most operational knowledge develops over time. Enables AI-led automation with human expertise for complex issues. |

## The Progression Pattern

The systematic shift from tacit-heavy to formal-heavy reflects the fundamental nature of software development as theory building followed by theory instantiation. Early phases build theory about the problem and opportunity—this theory is inherently tacit, residing in developers' and stakeholders' minds. Middle phases transform theory into formal specifications and designs—a translation process requiring substantial tacit understanding. Later phases instantiate specifications into formal artifacts (code, tests, procedures) that machines can execute—work operating primarily on formal representations.

**Why emergent stays consistently low (10%)**: Emergent knowledge arises from interactions and discoveries during work. It remains relatively constant across phases because every phase involves some discovery—unexpected stakeholder needs in Requirements, unanticipated design trade-offs in Architecture, surprising implementation challenges in Construction. However, emergent knowledge never dominates because most work involves applying existing knowledge rather than discovering fundamentally new understanding.

**Why the transition point occurs around Design/Implementation**: Design is where theory transformation into formal representation reaches a tipping point. Requirements capture "what" in semi-formal specifications requiring human interpretation. Design defines "how" in structures increasingly amenable to formalisation. Implementation executes designs in entirely formal representations (code). This progression explains why AI capabilities correspond inversely with tacit density—AI excels at formal manipulation but cannot access tacit understanding.

**Composition shifts within phases**: The percentages represent characteristic compositions, but composition can shift as a phase progresses. This is particularly evident for phases that span significant time:
- **Planning** starts with high uncertainty (more tacit) and becomes more formal as Requirements and Design provide detail
- **Requirements** starts with elicitation (high tacit) and becomes more formal as specifications stabilise
- **Testing** may shift toward more tacit content during exploratory testing phases

The estimates represent the phase's overall character rather than a fixed state throughout.

## Key Implications

**For documentation strategy**: Tacit-heavy phases (Initiation, Planning) require supplementary approaches beyond documents—mentoring, communities of practice, storytelling. Balanced phases (Requirements, Design) need dual strategies—formal specifications plus rationale capture. Formal-heavy phases (Implementation, Testing, Operations) benefit from comprehensive formal documentation with targeted tacit knowledge capture for critical decisions.

**For automation boundaries**: Tacit-heavy phases must remain human-led regardless of AI technical capabilities because tacit knowledge cannot be accessed by AI. Balanced phases benefit from human-AI partnership where humans provide tacit understanding and AI handles formal transformations. Formal-heavy phases enable AI-led execution with human oversight for exceptional situations requiring tacit judgement.

**For team organisation and knowledge transfer**: Tacit-heavy phases benefit critically from team stability—Initiation and Planning knowledge resides in specific individuals and degrades with turnover. Formal-heavy phases support more flexible staffing because knowledge exists in formal artifacts. Knowledge transfer strategies must adapt—tacit phases need mentoring and pairing; formal phases can use documentation and training.

**For measurement approaches**: Formal-heavy phases support quantitative metrics (defect density, test coverage, deployment frequency) because artifacts are measurable. Tacit-heavy phases require qualitative assessment (stakeholder alignment, shared understanding, problem framing adequacy) because critical knowledge resists quantification. Mixed approaches are needed for balanced phases.

**For understanding failure patterns**: Phase composition predicts failure modes. Tacit-heavy Initiation failures stem from stakeholder misalignment and inadequate problem framing—PMI found communication failures (which originate in early phases) contribute to 56% of failed projects. Balanced Requirements failures stem from incomplete tacit-to-formal translation. Formal-heavy Implementation failures stem from lost design understanding. Each requires composition-appropriate mitigation.

## Phase-Dependent Transactive Memory Requirements

Phase composition predicts transactive memory infrastructure requirements. The fundamental insight: **effective knowledge capture reduces transactive memory burden by enabling direct lookup**. However, tacit knowledge resists complete capture by definition. Therefore, phases with higher tacit composition require more robust actor-routing mechanisms ("who knows what"), while phases with higher formal composition can rely more on direct information retrieval.

### The Phase-TMS Relationship

| Phase | Tacit % | Primary knowledge retrieval strategy | TMS investment required |
|-------|---------|--------------------------------------|------------------------|
| **1. Initiation** | 75% | Actor routing ("who knows what") | Very high |
| **2. Planning** | 55% | Actor routing with some direct lookup | High |
| **3. Requirements** | 50% | Balanced—both strategies essential | Medium-high |
| **4. Design** | 40% | Direct lookup with actor routing support | Medium |
| **5. Implementation** | 35% | Direct lookup primarily | Medium-low |
| **6. Testing** | 30% | Direct lookup primarily | Low |
| **7. Operations** | 30% | Direct lookup primarily | Low |

### Reasoning

The relationship between phase composition and TMS requirements follows from the nature of knowledge types:

1. **Formal knowledge supports direct lookup**: Once captured, formal knowledge can be retrieved through search, documentation, and AI-assisted querying. No "who knows what" awareness is required—the knowledge is accessible directly.

2. **Tacit knowledge requires actor routing**: Tacit knowledge, by definition, resists complete capture. To access it, one must locate and consult the person who holds it. This is precisely what transactive memory provides—the directory of "who knows what."

3. **Therefore**: Phases with high tacit percentage require robust TMS infrastructure; phases with high formal percentage can function with lighter TMS if documentation is adequate.

### Tacit Subtype Variation by Phase

The relationship is further refined by considering tacit knowledge subtypes (see [Information Composition Taxonomy](./concept_information-taxonomy.md#tacit-knowledge-subtypes)). The composition of tacit subtypes likely varies across phases:

| Phase | Dominant tacit subtype | TMS implication |
|-------|------------------------|-----------------|
| **Early (1-2)** | **Embedded** (strategic intuition, stakeholder dynamics) | TMS essential—no capture substitute; must route to expert |
| **Middle (3-4)** | **Elicitable** (design rationale, requirement interpretation) | TMS valuable—helps locate elicitation sources |
| **Later (5-7)** | **Documentable** (decisions not yet written down) | TMS less critical—capture effort has high ROI |

This subtype pattern amplifies the phase-TMS relationship:
- Early phases have tacit knowledge that *cannot* be captured (Embedded), making TMS irreplaceable
- Later phases have tacit knowledge that *hasn't been* captured (Documentable), where investment in documentation may reduce TMS dependency

### TMS Failure Mode Predictions

If this analysis is correct, TMS failures should manifest differently across phases:

| Phase type | Expected TMS failure symptom |
|------------|------------------------------|
| **Tacit-heavy (early)** | "We don't know who understands the client's real needs" |
| **Balanced (middle)** | "We can't find who made this design decision or why" |
| **Formal-heavy (later)** | "The documentation is outdated but no one owns it" |

Early-phase TMS failures are about *locating expertise*. Later-phase failures are about *maintaining documentation*—a different problem requiring different interventions.

### Complementary vs. Substitution Relationship

An important nuance: even formal knowledge benefits from TMS. Knowing "who wrote the authentication module" helps even when the code is readable—the author can provide context, explain non-obvious decisions, and guide modification. TMS and formal knowledge retrieval are **complementary rather than substitutes**.

However, the *relative importance* shifts:
- In tacit-heavy phases, TMS is *essential*—without it, knowledge is inaccessible
- In formal-heavy phases, TMS is *valuable but not essential*—it enhances efficiency but alternatives exist

This means TMS investment should be *weighted* toward early phases without being *absent* from later phases.

### Implications for AI Integration

AI can participate differently in knowledge retrieval depending on phase:

| Phase type | AI role in knowledge access |
|------------|----------------------------|
| **Tacit-heavy** | Cannot access tacit knowledge directly; may help *locate* human experts through metadata analysis |
| **Balanced** | Can facilitate elicitation dialogue; can retrieve formal specifications |
| **Formal-heavy** | Can directly retrieve and process formal artifacts; serves as knowledge retrieval system |

This reinforces the framework's guidance on collaboration patterns: AI-Led patterns are appropriate for formal-heavy phases partly because AI can serve as an effective knowledge retrieval mechanism for formal knowledge.

### Infrastructure Implications

Phase-dependent TMS requirements suggest differentiated infrastructure investment:

**For tacit-heavy phases (1-2)**:
- Expertise directories: Who knows what about stakeholders, strategy, market
- Mentorship networks: Deliberate pairing of experts with those who need knowledge
- Stable teams: Minimise turnover that disrupts TMS
- Face-to-face interaction: Lewis (2003) found TMS emerges through face-to-face communication

**For balanced phases (3-4)**:
- Rationale capture: ADRs, design documents that preserve "why"
- Elicitation support: Structured methods to surface tacit knowledge
- Mixed TMS: Both formal retrieval and actor routing

**For formal-heavy phases (5-7)**:
- Documentation systems: Searchable, maintained knowledge bases
- AI-assisted retrieval: AI can navigate formal artifacts effectively
- Lighter TMS: Focus on maintaining accuracy of "who owns what"

## Integration with Other Concepts

- [**Information Composition Taxonomy**](./concept_information-taxonomy.md): Concept 6 applies Concept 1's three knowledge types to the seven phases, providing specific percentage estimates rather than general definitions. Tacit knowledge subtypes (Documentable, Elicitable, Embedded) vary by phase, affecting TMS requirements.
- [**Transactive Memory Systems**](./foundation_transactive-memory.md): Phase composition predicts TMS requirements—tacit-heavy phases require robust actor routing; formal-heavy phases can rely more on direct lookup. See Phase-Dependent Transactive Memory Requirements section above.
- [**Agent Context Model (3S2P)**](./concept_agent-context-model.md): The Phase dimension of 3S2P enables agents to calibrate their behaviour based on expected information composition and appropriate TMS strategies for the current phase.
- [**Theory-Building Principle**](./foundation_theory-building.md): Phase composition reflects theory-building progression—early phases build problem theory (tacit-heavy), middle phases transform theory to specifications (balanced), later phases instantiate specifications (formal-heavy).
- [**Eight-Capability Taxonomy**](./concept_capability-model.md): Different phases emphasise different capabilities based on their composition. Tacit-heavy phases emphasise Elicit, Synthesise, Decide. Formal-heavy phases emphasise Transform, Generate, Preserve.
- [**Seven-Phase SDLC Model**](./concept_seven-phase-sdlc.md): Concept 6 characterises each phase by its information composition. Note that phases overlap and iterate (see Phase Dynamics in Concept 4); composition estimates represent characteristic values, not fixed states.
- [**Actor Model**](./concept_actor-model.md): Phase composition determines appropriate actor participation. Human actors required for tacit-heavy phases; AI actors enable formal-heavy phases.
- [**Five Collaboration Patterns**](./concept_collaboration-patterns.md): Patterns shift systematically across phases—Human-Only/Human-Led for tacit-heavy early phases, Partnership for balanced middle phases, AI-Led for formal-heavy later phases.
- [**Information Loss at Transitions**](./concept_transitions-info-loss.md): Loss patterns differ by phase composition. Tacit knowledge loss is severe at early transitions (Initiation→Planning: 35-45% loss); formal knowledge loss is lower at later transitions.
- [**Phase-Aware Measurement**](./concept_phase-aware-measurement.md): Phase composition determines appropriate measurement approaches—qualitative for tacit-heavy, quantitative for formal-heavy, hybrid for balanced.

## Evidence Base and Methodological Notes

**Derivation methodology**: The percentages are derived estimates based on empirical studies of knowledge types in software development, artifact production rates across phases, and practitioner surveys about work characteristics. They represent informed estimates rather than direct measurements.

**Robust finding vs estimates**: The directional pattern (tacit-heavy early, formal-heavy late) is the robust empirical finding validated across multiple studies and organisational contexts. The specific percentages should be treated as indicative rather than precise—the actual composition in specific organisations may vary by ±10% based on domain, methodology, and organisational practices.

**Evidence supporting the pattern**:

- Studies showing 70-80% of critical software knowledge is tacit (not captured in documents)
- PMI Pulse of the Profession finding that communication failures contribute to 56% of failed projects—and communication failures disproportionately originate in early phases where shared understanding must be established
- Curtis et al. (1988) field study identifying "thin spread of application domain knowledge" as a critical problem in early phases
- Turnover studies showing knowledge loss precedes productivity decline (Rigby et al., 2016), with teams experiencing high turnover accumulating 37% more technical debt
- Team Tacit Knowledge Measure showing r=0.35 correlation with team effectiveness (Ryan & O'Connor, 2013)
- Observation that later phases produce measurable artifacts (code, tests) indicating higher formal content
- Practitioner reports that different phases feel qualitatively different in terms of how much "gut feel" versus "mechanical execution" they involve

**Validation needs**: Systematic measurement studies using consistent methodology across multiple organisations would enable more precise percentage estimates. Longitudinal studies tracking how composition shifts within organisations over time. Cross-cultural validation whether composition patterns hold across different national and organisational cultures.

## Validation Status

- ✓ **Directional pattern**: Well-validated—early phases are tacit-heavier than later phases across multiple empirical studies
- ✓ **Failure correlation**: Multiple independent studies associate early-phase inadequacy with project failure (PMI 56% communication; Curtis et al. knowledge deficits; turnover studies). The specific contribution of requirements versus other early phases remains difficult to isolate empirically.
- ⚠ **Specific percentages**: Reasoned estimates requiring systematic measurement studies with consistent methodology
- ⚠ **Organisational variance**: How much composition varies across organisations with different domains and methodologies needs quantification
- ⚠ **Emergent percentage consistency**: The claim that emergent stays consistently around 10% across all phases needs validation
- ⚠ **Optimal granularity**: Whether finer-grained composition estimates (e.g., sub-phase level) would provide additional value
- ⚠ **Phase-TMS relationship**: The prediction that TMS requirements scale with tacit percentage is logically derived but empirically untested; would benefit from comparative studies of TMS effectiveness across phases
- ⚠ **Tacit subtype phase variation**: The claim that Embedded knowledge dominates early phases while Documentable dominates later phases is a reasoned hypothesis requiring validation

---

*Phase-Specific Information Composition provides the empirical foundation for all phase-aware reasoning in the framework. By characterising each phase's knowledge mix, this concept enables principled decisions about documentation, automation, collaboration, and measurement strategies that respect the fundamental nature of work in each phase rather than imposing one-size-fits-all approaches.*
