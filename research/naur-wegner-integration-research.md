# Theory and Memory in Software Development: Integrating Naur's and Wegner's Frameworks

**Executive Summary**

This analysis examines the theoretical relationship between Peter Naur's "Programming as Theory Building" (1985) and Daniel Wegner's "Transactive Memory Systems" (1985-1995), assessing whether their integration yields novel insights for understanding knowledge architecture in software development.

The central finding is that these frameworks are **complementary rather than contradictory**, operating at different levels of analysis. Naur addresses the *content* of programming knowledgeâ€”what must be understood to intelligently modify software. Wegner addresses the *distribution* and *coordination* of knowledgeâ€”how groups manage expertise beyond any individual's capacity. The apparent tension dissolves upon recognising that transactive memory systems require individual expertise to function; TMS coordinates access to knowledge but cannot substitute for it. Naur's "theory" represents the individual expertise that TMS presupposes.

Integration reveals a critical insight: **software teams face a dual challenge**. They must cultivate deep individual theories (per Naur) whilst building effective transactive systems for coordination (per Wegner). "Program death" can occur through either mechanismâ€”loss of individual theory holders *or* degradation of the collective coordination structure. This integrated view explains phenomena neither framework addresses alone, including why well-documented systems remain difficult to maintain (theory loss), why single-expert teams fail despite retained expertise (TMS failure), and why pair programming enhances both knowledge depth and team resilience simultaneously.

However, integration remains theoretically provisional. The frameworks emerged from different disciplinary traditions with distinct assumptions about knowledge representation, and empirical research directly testing integrated predictions is sparse. Naur's claims about knowledge inexpressibility may be overstated, whilst Wegner's framework was developed primarily for declarative knowledge rather than the procedural-tacit knowledge dominant in programming.

The practical implication is that software organisations should attend to both dimensions: developing individual expertise through theory-building practices (apprenticeship, close collaboration) whilst simultaneously cultivating team-level TMS through practices that build mutual awareness of expertise distribution.

---

## 1. Conceptual Analysis: Mapping the Theoretical Relationship

### Defining the core constructs precisely

Understanding the relationship between Naur's and Wegner's frameworks requires precise definition of their central concepts, drawing from primary sources.

**Naur's "Theory"** draws explicitly from Gilbert Ryle's *The Concept of Mind* (1949). Theory is not propositional knowledge ("knowing that") but practical, embodied capability ("knowing how"). Naur defines it as "the knowledge a person must have in order not only to do certain things intelligently but also to explain them, to answer queries about them, to argue about them." A programmer possessing a program's theory can: (1) explain how the solution relates to real-world affairs it addresses, (2) justify why each part is designed as it is, and (3) respond constructively to modification demands. Crucially, Naur argues this knowledge "necessarily, and in an essential manner, transcends that which is recorded in the documented products."

**Wegner's "Transactive Memory System"** is "a set of individual memory systems in combination with the communication that takes place between individuals." Unlike individual memory operating through internal encoding, storage, and retrieval, TMS extends cognition by treating other people as external memory resources. The system comprises three elements: **specialisation** (differentiated expertise distribution), **credibility** (beliefs about members' knowledge reliability), and **coordination** (orchestrated knowledge processing). The critical mechanism is the "who knows what" directoryâ€”members store labels and location information for expertise, enabling access to knowledge beyond any individual's storage.

### Are these constructs at the same level of analysis?

A fundamental distinction emerges: Naur's theory concerns the *content and nature* of programming knowledge within individuals, whilst Wegner's TMS concerns the *distribution and retrieval* of knowledge across a collective. They address different questions:

- **Naur asks**: What constitutes genuine understanding of a program, and what happens when that understanding is absent?
- **Wegner asks**: How do groups coordinate access to distributed expertise, and what structures enable this?

This suggests the frameworks are **hierarchically related rather than contradictory**. Individual theory (Naur) is a component that TMS (Wegner) coordinates. TMS operates on pre-existing individual expertise; it does not generate expertise de novo. Wegner explicitly states that specialisation means members "deepen his knowledge in any areas that are lacking" and that experts are "held responsible" for domain knowledge. The system works because "individuals regularly remember items in their own domains of expertise."

### Can TMS substitute for individual theory?

This question cuts to the heart of the apparent tension. The evidence suggests **TMS cannot substitute for individual theory**, though it can *complement* it in crucial ways.

Wegner's TMS provides **access** to expertise but not **replacement** of it. The "who knows what" directory contains metadataâ€”labels and locationsâ€”not content. A team member knowing that "Alice understands the authentication module" does not thereby understand authentication themselves. They gain *retrieval capability*, not *possession*.

For Naur's theoryâ€”which involves explanatory, justificatory, and modification capabilitiesâ€”mere retrieval access is insufficient. Intelligently modifying code requires the modifier to understand the domain mapping, design rationale, and architectural implications. Consulting an expert might help, but the consulting party must still integrate that information into their own working theory to act on it effectively.

However, this conclusion requires nuance. TMS might enable a **functional substitute** in team contexts where:

1. The theory holder remains accessible for consultation
2. Modification tasks are decomposed so that the theory holder handles theory-dependent decisions
3. Communication bandwidth is sufficient for real-time collaboration

Under these conditions, the team collectively possesses modification capability even if individual members cannot independently exercise it. This represents a form of "extended mind" where theory exists in the coupling between individuals rather than within any single person.

### The relationship between theory death and TMS degradation

Naur's "program death" occurs when "the programmer team possessing its theory is dissolved." Importantly, Naur consistently uses team languageâ€”the theory exists "by and in the team of programmers." This suggests Naur implicitly acknowledged some collective dimension to theory possession, though he did not elaborate the mechanisms.

Wegner describes TMS degradation when members leave: "When a group dissolves, formerly interdependent individuals are left with the individual remnants of what was once a transactive system... The loss of transactive memory feels like losing a part of one's own mind." Lewis et al. (2007) found that after member replacement, TMS becomes inaccurate, gaps appear in knowledge structure, and "mindless application of outdated TMS harms performance."

The integrated view reveals **two distinct failure modes**:

1. **Theory death (Naur)**: Loss of individuals possessing deep understanding. Even if TMS structure remains intact (people know "who knew what"), the expertise itself is gone. New members cannot simply consult someone else.

2. **TMS degradation (Wegner)**: Disruption of coordination mechanisms. Even if individual expertise remains, the collective loses awareness of who knows what, how to access expertise, or how to coordinate retrieval.

A software team could suffer either failure independently or both simultaneously. A project might lose its primary expert (theory death) whilst retaining a functioning TMS among remaining members who now coordinate access to diminished collective knowledge. Conversely, a reorganisation might preserve individual expertise whilst destroying the coordination structures that enabled its effective deployment.

### Assumptions each framework makes

**Naur's assumptions**:
1. Programming knowledge is fundamentally tacitâ€”similar to skill knowledge like riding a bicycle or recognising faces
2. Similarity recognition underlying design decisions cannot be formalised into rules
3. Documentation cannot capture the essential aspects of theory
4. New programmers can only acquire theory through extended apprenticeship with theory holders

**Wegner's assumptions**:
1. Expertise can be signalled and recognised by others
2. Communication channels function adequately for coordination
3. Knowledge can be meaningfully distributed (different people can hold different pieces)
4. Location information enables effective retrieval

These assumptions are not mutually exclusive, but they do create tension. Naur's strong claims about inexpressibility challenge whether the "labels" in Wegner's TMS can adequately represent programming expertise. If a domain cannot be characterised well enough to create a label, how can others know to consult the expert?

### Where frameworks are silent on each other's concerns

**Naur is silent on**:
- How theory is shared among team members (he uses team language but doesn't explain mechanisms)
- Whether individual theories must be identical or merely compatible
- How conflicts between individual theories are resolved
- The coordination structures that enable team-level programming

**Wegner is silent on**:
- The nature of expertise itself (TMS coordinates access but doesn't characterise expertise content)
- Whether some forms of expertise resist distribution or coordination
- The special characteristics of procedural/tacit knowledge versus declarative knowledge
- Domain-specific limitations on transactive memory

### Logical dependencies between frameworks

If we accept both frameworks, logical dependencies emerge:

1. **TMS presupposes individual expertise**: Without theory holders, there is nothing for TMS to coordinate. TMS is parasitic on individual knowledge.

2. **Effective programming teams require both**: Individual theory enables intelligent action; TMS enables coordination beyond individual capacity.

3. **Team resilience depends on both dimensions**: Redundancy in theory holders (multiple people understanding each component) AND robust TMS (awareness of expertise distribution) both contribute to team capability.

4. **Knowledge transfer has dual targets**: Successful onboarding requires building individual theory AND integrating the newcomer into TMS.

### A proposed integrated model

Drawing these observations together, an integrated model emerges:

**Level 1 (Individual)**: Programmers hold "theory"â€”embodied, practical understanding enabling explanation, justification, and modification. Theory is built through activity, cannot be fully documented, and requires apprenticeship to transfer.

**Level 2 (Team)**: Teams develop TMSâ€”distributed expertise coordinated through specialisation, credibility, and communication. TMS enables access to collective capability exceeding any individual.

**Level 3 (Interface)**: The connection between levels operates through:
- Theory holders serving as the "experts" whose knowledge TMS coordinates
- TMS awareness enabling appropriate consultation during theory-dependent tasks
- Collaborative practices (pair programming, code review) building both individual theory and team TMS simultaneously

**Program health** requires both levels functioning: adequate individual theories distributed across the team, and effective TMS enabling coordination. **Program death** can occur through either mechanism's failure, with distinct remediation strategies required.

---

## 2. Empirical Assessment: Evidence for Integration, Contradiction, or Orthogonality

### Evidence supporting Naur's framework

Multiple empirical findings align with Naur's claims about programming knowledge and its transfer difficulties.

**Program comprehension research** strongly supports the existence of tacit, theory-like knowledge. The von Mayrhauser and Vans integrated model (1995) demonstrates that programmers build mental models through chunking, hypothesis testing, and opportunistic strategies. Experts possess "efficiently organised specialised schemas" abstracted from prior systemsâ€”precisely the kind of embodied understanding Naur describes. Crucially, unfamiliar code forces bottom-up analysis regardless of available documentation, suggesting documentation alone is insufficient.

**Time allocation studies** show developers spend approximately **70% of their time on program comprehension activities** (Xia et al., 2018, studying 78 professional developers). This substantial investment indicates that understanding cannot simply be "read off" from code or documentationâ€”it must be actively constructed, consistent with Naur's theory-building view.

**Documentation preference studies** provide striking support. Garousi et al.'s industrial case study at NovAtel found technical documentation was consulted **least frequently for maintenance** activities, with **source code preferred** as the primary information source. If documentation adequately captured program theory, this pattern would be inexplicable.

**Turnover impact studies** demonstrate knowledge loss consistent with "program death." Nassif and Robillard's replication study across eight large open-source projects found all exhibited similar knowledge loss probability distributions, with "extreme knowledge loss more severe than originally discovered." Orphaned codeâ€”authored by departed developersâ€”often remained unaddressed for long periods, suggesting the tacit knowledge needed to maintain it had departed with its creators.

**Technical debt research** links knowledge loss to system degradation. The InsighTD global survey (653 responses) identified "lack of knowledge" as a primary cause of technical debt. Teams with high turnover accumulate **37% more technical debt** and spend **22% more time debugging** (LinearB 2024).

### Evidence supporting Wegner's framework

Strong empirical evidence demonstrates that TMS functions effectively in work teams, including software contexts.

**Faraj and Sproull's landmark study** (2000) of 69 software development teams found that **expertise coordination shows a strong positive relationship with team performance**â€”significant even after controlling for expertise presence. Critically, "mere presence of expertise on a team is insufficient to produce high-quality work." The three elements of expertise coordination map directly to TMS: knowing where expertise is located, recognising when expertise is needed, and bringing needed expertise to bear.

**Lewis's longitudinal research** (2003, 2004) validated TMS measurement and demonstrated positive relationships with team viability and performance. Her study of 64 MBA consulting teams found TMS development predicted by initially distributed expertise and member familiarity, with **face-to-face communication** uniquely enabling TMS emergenceâ€”other communication types showed no effect.

**Software-specific TMS studies** confirm applicability to programming contexts. Chen et al. (2014) found TMS positively associated with knowledge sharing and communication quality in 120 open-source project teams. Research on software process tailoring in Taiwanese firms found TMS positively impacting effectiveness and efficiency.

**Pair programming knowledge transfer evidence** aligns with TMS mechanisms. Zieris and Prechelt's extensive qualitative analysis (27 industrial sessions, 40 hours of material) found **knowledge is transferred in basically all pair programming sessions**, covering approximately 35% of session time. Vanhanen and Lassenius found pair programming improved both breadth and depth of knowledge transferâ€”each code package understood by more developers, and developers understanding more packages. These patterns suggest pair programming simultaneously builds individual understanding *and* distributes expertise across the team.

### Evidence of tension or contradiction

Some findings create tension between frameworks without definitively contradicting either.

**The communication modality question**: Lewis (2004) found face-to-face communication uniquely enabled TMS development; other communication types had no effect. If TMS depends on rich communication, this raises questions about whether TMS can function in distributed teamsâ€”precisely where Naur's concerns about knowledge transfer are most acute. However, this might reflect a boundary condition rather than a contradiction.

**Theory transfer versus TMS coordination**: Naur claims theory cannot be fully documented or transferred except through apprenticeship. Yet TMS research shows groups can develop effective coordination through communication about expertise. The resolution may be that TMS coordinates *access* to expertise (which can be communicated) whilst theory itself remains tacit and transfer-resistant. These operate at different levels.

**Onboarding evidence**: Research shows new developers require **6-9 months** to achieve autonomy, with Gartner reporting 4-8 weeks productivity setback per turnover event. This lengthy timeline is more consistent with Naur's claim that theory-building requires extended apprenticeship than with simpler TMS-integration models. However, onboarding involves both building individual understanding *and* integrating into team TMS, potentially explaining the extended duration.

### Evidence of orthogonality

Certain findings suggest the frameworks address genuinely different phenomena that happen to co-occur in software teams.

**TMS specialisation versus theory distribution**: TMS assumes differentiated expertiseâ€”different people knowing different thingsâ€”which is coordinated through the "who knows what" directory. Naur's concern is primarily with whether *anyone* holds adequate theory, not how multiple theories coordinate. A team could have excellent TMS (everyone knows who knows what) whilst suffering theory inadequacy (no one deeply understands the legacy module).

**Quality of social interaction findings**: Ryan and O'Connor's software team study found that quality of social interaction plays a "greater role than transactive memory" in team tacit knowledge acquisition. This suggests mechanisms beyond TMS contribute to the theory-building Naur describes. Face-to-face interaction may serve dual functions: building TMS coordination structures *and* enabling the apprenticeship-style theory transfer Naur requires.

### Methodological limitations across the evidence base

Several limitations constrain interpretation:

1. **Sample sizes**: Many TMS studies involve 27-124 teams, limiting statistical power for detecting subtle effects.

2. **Self-report measurement**: Lewis's TMS scale relies on participant perception; whether this captures actual knowledge distribution is questionable.

3. **Cross-sectional designs**: Most studies measure TMS and performance at one point, limiting causal inference.

4. **Context-specificity**: Findings from MBA consulting teams or laboratory studies may not generalise to production software maintenance.

5. **Publication bias**: Hannay et al.'s meta-analysis of pair programming studies identified publication bias favouring positive findings.

6. **Operationalisation gaps**: No study directly operationalises Naur's "theory" for measurement; alignment with TMS research requires inference.

### Summary of empirical assessment

The evidence supports **complementarity over contradiction**. Both frameworks receive empirical support in software contexts, with no direct contradictions identified. The apparent tension between Naur's pessimism and Wegner's optimism dissolves when recognising they address different levels: Naur addresses whether adequate understanding exists anywhere, Wegner addresses how existing understanding is coordinated. Software teams demonstrably develop TMS, and software maintenance demonstrably suffers from knowledge loss when experts depart. Both observations can be true simultaneously.

---

## 3. Explanatory Power Analysis: What Integration Illuminates

### The bus factor problem

The "bus factor" (minimum number of people whose departure would harm a project) is widely discussed but theoretically underspecified. Does it measure lost individual theory, degraded TMS, or something else?

**The integrated view provides a richer analysis**: Bus factor represents the intersection of individual theory distribution and TMS vulnerability. A low bus factor indicates:

1. **Theory concentration**: Few individuals hold adequate theory for critical components (Naur's concern)
2. **TMS fragility**: The coordination structure depends on specific individuals whose departure disrupts retrieval (Wegner's concern)

These are distinct vulnerabilities. A team might address theory concentration (ensuring multiple people understand each module) whilst remaining TMS-fragile (if coordination depends on one person who knows "who knows what"). Conversely, robust TMS might mask theory concentration until the expert departs.

**Integration predicts**: Effective bus factor mitigation requires *both* redundant theory holders *and* distributed TMS awareness. Pair rotation addresses both simultaneouslyâ€”spreading understanding whilst building mutual awareness of expertise distribution. This explains why pair programming is considered a bus-factor remedy: it operates on both dimensions.

### Legacy system struggles

Why do teams fail to modify inherited systems despite documentation? Neither framework alone fully explains this.

**Naur explains**: The original programmers' theory died with their departure; documentation cannot capture the tacit knowledge required for intelligent modification.

**Wegner explains**: The new team lacks TMS for the inherited systemâ€”they don't know who knew what, and former experts are unavailable for retrieval.

**Integration explains more**: New teams face a double deficit. They must build individual theory *and* establish TMS, but without access to former experts, both processes are impaired. Documentation might partially scaffold theory-building but cannot substitute for it. The new team cannot leverage TMS because there is no one to consult. They must engage in what Naur calls "building a theory to fit an existing program text," which he describes as "difficult, frustrating, and time consuming."

**Integration predicts**: Maintenance success depends on continuityâ€”either of theory holders who can transfer understanding through apprenticeship, or sufficient scaffolding that new teams can construct theory (not just read documentation). The persistence of even one original developer should substantially improve maintenance outcomes by providing both a theory source and a TMS anchor.

### Documentation insufficiency

Why don't documents enable maintenance? Naur claims theory is inexpressible; Wegner's framework doesn't directly address documentation.

**Integrated explanation**: Documentation captures labelsâ€”what things are called, what they purport to doâ€”but not the tacit theory that enables intelligent use of this information. In TMS terms, documentation provides *location information* without *expertise content*. A maintainer can learn that "Module X handles authentication" but not the tacit understanding of how authentication relates to the broader system, why it is designed as it is, or how to modify it appropriately.

Furthermore, documentation cannot replicate the *transactive processes* through which TMS operates. Reading documentation is one-way retrieval; TMS involves interactive communication enabling clarification, elaboration, and collaborative sense-making.

**Integration predicts**: Documentation helps most when it scaffolds theory-building (providing starting points for mental model construction) or enables TMS activation (helping identify who to consult). Documentation emphasising *why* over *what*, *rationale* over *description*, should better support theory construction.

### Pair programming effectiveness

Pair programming shows quality improvements and knowledge-sharing benefits. Does it build individual theory, strengthen TMS, or both?

**Integrated analysis suggests both**. Research shows:

1. Knowledge transfer occurs in all pair programming sessions (supporting individual theory-building)
2. Pairs develop shared understanding (potentially TMS foundation)
3. Pair rotation spreads expertise awareness (building team-level TMS)
4. The "cognitive tag team" dynamic may scaffold theory articulation through verbalisation

**Integration explains why pair programming is so effective for knowledge outcomes**: It simultaneously addresses both levels. The navigator's observation scaffolds the driver's theory articulation (Naur); the collaboration builds mutual expertise awareness (Wegner); rotation extends both benefits team-wide.

**Integration predicts**: Practices combining individual learning with collective coordination will outperform practices targeting only one dimension. Pair programming with rotation should show greater bus-factor improvement than pair programming without rotation (which builds individual theory but limits TMS distribution).

### Knowledge silos

Are knowledge silos TMS failures, theory distribution failures, or different issues?

**Integrated view**: Knowledge silos reflect *localised* theory possession with *limited* TMS scope. A developer deeply understands their component (adequate local theory) but other team members neither understand it themselves (no redundant theory) nor know that this developer is the expert (no TMS linkage).

Stack Overflow's survey finding that two-thirds of developers encounter silos weekly suggests this is a coordination failure (TMS) more than an expertise failureâ€”the knowledge exists somewhere but cannot be located or accessed.

**Integration predicts**: Silo remediation requires both *making expertise visible* (TMS intervention) and *distributing expertise* (theory-building intervention). Cross-training addresses theory distribution; expertise directories and communication structures address TMS. Neither alone fully solves the problem.

### What integration predicts that neither framework alone predicts

1. **Dual-mode failure**: Teams can fail through either theory loss or TMS degradation, with different symptoms and remedies. Theory loss manifests as inability to make intelligent modifications; TMS degradation manifests as inability to locate relevant expertise.

2. **Partial substitution**: Well-functioning TMS can partially compensate for theory gaps by enabling access to distributed expertise. However, some tasks require individual theory that cannot be decomposed for distributed execution.

3. **Practice interaction effects**: Practices affecting both dimensions (pair programming with rotation, communities of practice) should show multiplicative rather than additive benefits.

4. **Onboarding dual targets**: New member integration requires both building individual theory *and* TMS integration, explaining extended onboarding timelines and the superiority of mentorship-based approaches.

### Contradictory predictions

The frameworks generate contradictory predictions in specific scenarios:

**Expert availability**: Naur's framework predicts that maintaining access to original experts should dramatically improve modification capability. Wegner's framework predicts that well-developed TMS can enable access to distributed expertise even without specific experts. 

In a team with excellent TMS but no one possessing deep theory of a legacy component, Naur predicts failure whilst Wegner predicts TMS might enable problem-solving through combination of partial knowledge. Empirically, the truth likely lies between: TMS helps but cannot fully substitute for theory.

**Documentation investment**: Naur's framework is pessimistic about documentation value given theory's inexpressibility. A strong TMS interpretation might suggest documentation could scaffold TMS by externalising "who knows what" information. Integration suggests documentation matters for TMS coordination but cannot substitute for theoryâ€”a nuanced position predicting moderate documentation value.

---

## 4. Critical Limitations: Boundary Conditions and Theoretical Concerns

### Incompatible assumptions between frameworks

**Knowledge representation**: Naur's framework assumes programming knowledge is fundamentally tacitâ€”similar to recognising faces or tasting wine. Such knowledge resists explicit representation. Wegner's framework assumes knowledge can be labelled and located, which requires at least minimal explicit characterisation. If Naur is correct about radical inexpressibility, even TMS labels ("Alice knows authentication") may inadequately characterise expertise for effective retrieval.

**Optimism versus pessimism about transfer**: Naur argues theory transfer requires extended apprenticeship and even then succeeds imperfectly. Wegner's research demonstrates effective knowledge coordination emerging through communication, suggesting more optimism about collective processes. These positions may be reconcilable (coordination is possible even when transfer is difficult) but represent different orientations toward knowledge management interventions.

**Individual versus collective locus**: Naur's theory resides in individuals; teams possess theory only derivatively through individual members. Wegner's TMS is genuinely collectiveâ€”a property of the group not reducible to individual memories. This creates ontological tension about where programming capability ultimately resides.

### Contexts supporting one framework but not the other

**Solo development**: For individual programmers, Wegner's TMS is inapplicable (there is no group), but Naur's theory-building remains fully relevant. Individual programmers build theories of their programs and experience "program death" when they forget or abandon projects.

**Highly procedural tasks**: Some programming tasks are sufficiently well-defined that documentation can effectively capture required knowledge (simple maintenance scripts, well-standardised configurations). Here, Naur's claims about inexpressibility seem overstated, though TMS coordination may still add value.

**Distributed teams with high turnover**: In fluid organisations where team composition constantly changes, TMS may never stabilise sufficiently to provide coordination benefits. Naur's concerns about theory loss would dominate. Conversely, stable teams might develop robust TMS that partially compensates for individual theory gaps.

**Different knowledge types**: Procedural programming knowledge (how to implement algorithms) may differ from architectural knowledge (why the system is structured as it is). TMS may coordinate procedural knowledge more effectively than architectural understanding, which may require the deeper theory Naur describes.

### Does integration create conceptual confusion or genuine synthesis?

Several concerns merit attention:

**Level confusion**: Mapping individual theory as "content" that TMS "coordinates" may oversimplify both frameworks. Naur's theory includes coordination knowledge (how to respond to modifications); TMS involves more than coordination (credibility assessment involves evaluation, not just retrieval). The hierarchical framing may distort both concepts.

**Untested mechanism claims**: The integration proposes that practices like pair programming operate on both dimensions simultaneously. This is theoretically plausible but empirically untested. Alternative explanations existâ€”pair programming might primarily build individual understanding, with TMS benefits incidental.

**Disciplinary translation**: Naur writes from a computing and philosophy tradition; Wegner from cognitive and social psychology. Concepts may not translate cleanly. What Naur means by "theory" may be quite different from what Wegner would mean if he used the term.

### Scope limitations of integrated framework

**Team size**: Both frameworks were developed considering small groups. Scaling to large organisations raises questions about TMS applicability (Wegner acknowledged size as a boundary condition) and theory distribution across many individuals.

**Technology mediation**: Neither framework fully addresses how tools affect theory or TMS. Can version control systems, IDEs, or AI assistants scaffold theory-building or support TMS? The frameworks predate these technologies and may need extension.

**Temporal dynamics**: Both frameworks address states (having theory, possessing TMS) more than processes (how theory evolves, how TMS adapts). Software systems and teams change continuously; the dynamics of framework interaction remain underspecified.

### Gaps in empirical support for integration

**No direct tests**: No study operationalises both Naur's theory and Wegner's TMS to test integrated predictions. The empirical assessment relies on inference from separate literatures.

**Theory measurement absent**: While Lewis (2003) validated TMS measurement, no validated instrument measures Naur's "theory." Testing integration requires measuring both constructs in the same teams.

**Competing explanations unaddressed**: Alternative frameworks (cognitive load theory, expertise development research, organisational learning) might explain the same phenomena without requiring integration. The value-added of integration over simpler explanations is undemonstrated.

### Critical assessment of Naur's claims

Naur's pessimism about documentation may be **overstated**. His argument relies on analogy to non-formalisable similarity recognition (faces, wine), but programming arguably involves more structure than these domains. Design rationale, architectural decisions, and domain mappings *can* be documented, even if imperfectly. Modern practices like Architecture Decision Records (ADRs) represent attempts to capture exactly what Naur claims is inexpressible.

Furthermore, Naur's recommendation to "discard existing program text" and "solve the problem afresh" seems impractical for large systems and undervalues incremental comprehension. Program comprehension research shows developers *do* build understanding of unfamiliar code, albeit slowly.

### Critical assessment of Wegner's framework applicability

Wegner developed TMS primarily studying **intimate couples** and small groups handling **declarative knowledge** (facts, dates, phone numbers). Software development involves **procedural and tacit knowledge**â€”knowing how, not just knowing what. Whether TMS mechanisms operate similarly for procedural expertise is empirically uncertain.

Additionally, Wegner's research examined memory retrieval accuracy in controlled settings. Software development involves creative problem-solving, not just retrieval. TMS might coordinate access to relevant expertise without addressing whether that expertise enables creative solutions.

---

## 5. Practical Implications: From Theory to Practice

### Team organisation

The integrated framework suggests specific organisational principles, though with varying evidence strength:

**Established implicationâ€”overlapping expertise**: Teams should ensure multiple members understand each critical component (redundant theory) AND that all members know who understands what (TMS completeness). This implies deliberate expertise mapping and cross-training programmes.

**Established implicationâ€”stable team composition**: Both theory-building and TMS development require time. Frequent reorganisations disrupt both processes. Evidence consistently shows team familiarity predicts TMS effectiveness; theory transfer requires extended apprenticeship. Long-lived teams should outperform fluid teams on both dimensions.

**Speculative implicationâ€”optimal team size**: TMS effectiveness may degrade with team size (coordination complexity increases), whilst theory distribution becomes more difficult with larger groups. This suggests moderate team sizes (5-9 members) as potentially optimal, though empirical validation for software teams specifically is limited.

**Speculative implicationâ€”communication structure**: Lewis found face-to-face communication uniquely enables TMS; Naur's apprenticeship model similarly implies rich, interactive communication. This suggests distributed teams face inherent disadvantages that may be only partially mitigated by technology. Video conferencing may support TMS better than asynchronous text.

### Knowledge management

What should be documented (theory) versus distributed (TMS)?

**Established distinction**: Documentation cannot substitute for theory but can scaffold theory-building. Focus documentation on *why* decisions were made (supporting rationale construction) rather than *what* exists (which code reveals). Architecture Decision Records, design rationale documents, and contextual comments serve this function.

**Established distinction**: TMS requires explicit attention to expertise distribution awareness. Maintain visible expertise directories, encourage self-identification of knowledge domains, and create communication structures that surface "who knows what." This is distinct from documenting the knowledge itself.

**Speculative implication**: Different documentation strategies for different purposes. Onboarding documentation should scaffold theory-building (context, rationale, mental model starting points). Reference documentation should support TMS activation (quick lookup of who to consult, not comprehensive technical details).

### Onboarding

The integrated view implies onboarding has dual targets:

**Building individual theory**: New members need opportunities to construct understanding through activity, not just documentation review. Pair programming with experienced members, graduated task complexity, and regular theory-articulation exercises (explaining back what they understand) support this.

**TMS integration**: New members need to learn who knows what AND to become known for what they're learning. This requires introduction to team expertise distribution, participation in communication structures, and opportunities to demonstrate emerging expertise.

**Time implications**: Both processes require timeâ€”6-9 months for individual autonomy (empirical finding), with TMS integration potentially faster but requiring social integration alongside technical learning. Rushing onboarding undermines both dimensions.

### AI tools and their impact

Contemporary AI coding assistants raise novel questions for both frameworks:

**Can AI hold theory?** Naur's framework suggests noâ€”theory is embodied practical knowledge built through activity, involving similarity recognition that cannot be formalised. Current AI systems process representations, not meanings. They might generate plausible code without understanding the domain mapping, design rationale, or modification implications that constitute theory. However, this is contested; AI capabilities are evolving.

**Can AI participate in TMS?** Potentially yes, with limitations. AI could serve as a knowledge retrieval systemâ€”a sophisticated form of documentation that responds to queries. AI might know *that* certain patterns exist without knowing *why* they exist. This could support TMS coordination (identifying relevant code areas) without providing theory (understanding for modification).

**Speculative implication**: AI tools might shift the theory/TMS balance. If AI handles retrieval effectively, human TMS coordination becomes less criticalâ€”humans need to consult AI rather than each other. But theory remains human-dependent, potentially concentrating theory-building importance amongst fewer developers who still must understand systems deeply. This could exacerbate theory loss risks even whilst improving TMS-like retrieval.

### Measurement

What should organisations measure?

**Theory strength indicators** (difficult to measure directly):
- Time to complete modification tasks (inverse indicator)
- Modification quality (changes that integrate coherently versus patches)
- Ability to explain and justify design decisions
- Capacity to predict consequences of changes

**TMS effectiveness indicators** (more measurable):
- Accuracy of expertise attribution (do people correctly identify who knows what?)
- Speed of expertise location (how quickly can the right person be found?)
- Coordination smoothness (are handoffs effective?)
- Redundancy levels (how many people understand each component?)

**Integrated measures**: Bus factor analysis could incorporate both dimensionsâ€”assessing not just how many people could maintain a component (theory redundancy) but also how team coordination would degrade with departures (TMS resilience).

### Cautions about overconfident application

These implications rest on theoretical integration and indirect evidence. Direct validation is absent. Practitioners should:

1. Treat these as hypotheses for contextual testing, not established best practices
2. Recognise that different contexts (team size, project type, stability) may favour different balances
3. Avoid assuming that improving one dimension automatically improves the otherâ€”theory and TMS require distinct interventions
4. Remain alert to alternative explanations and adjust approaches based on observed outcomes

---

## 6. Conclusion: Towards a Unified Understanding

### What this analysis establishes

The integration of Naur's "Programming as Theory Building" and Wegner's "Transactive Memory Systems" reveals these frameworks as **complementary rather than contradictory**, operating at different levels of analysis that jointly illuminate software development knowledge architecture.

**Naur addresses the fundamental nature of programming knowledge**: understanding that transcends documentation, resides in individuals, and enables intelligent modification. His "theory" concept explains why software maintenance is difficult, why documentation is insufficient, and why expertise loss is devastating.

**Wegner addresses how groups coordinate distributed expertise**: the "who knows what" structures, credibility assessments, and retrieval processes that enable collective capability exceeding individual capacity. TMS explains how teams function effectively despite no individual knowing everything.

**Integration reveals that effective software teams require both dimensions**: adequate individual theories distributed across members, AND effective transactive memory enabling coordination. "Program death" can occur through either mechanism's failure, with distinct symptoms and remediation strategies. Practices like pair programming succeed partly because they address both dimensions simultaneously.

### What remains uncertain

This analysis is theoretical; direct empirical tests of integration are absent. Key uncertainties include:

1. Whether the hierarchical framing (theory as content, TMS as coordination) accurately represents both frameworks or distorts them
2. Whether practices actually operate on both dimensions simultaneously or whether apparent dual benefits have alternative explanations
3. How the frameworks scale to large organisations or highly distributed teams
4. Whether AI tools can meaningfully participate in either dimension

### Novel contributions

The integration offers several contributions beyond either framework alone:

**Dual-mode failure analysis**: Recognising that teams can fail through theory loss or TMS degradation, with different symptoms and remedies, provides more nuanced diagnostic capability.

**Practice design guidance**: Understanding that some practices (pair rotation, communities of practice) operate on both dimensions whilst others primarily affect one suggests more sophisticated intervention design.

**Onboarding reframing**: Treating onboarding as requiring both theory-building and TMS integration explains extended timelines and the superiority of mentorship over documentation-based approaches.

**Bus factor enrichment**: Reconceiving bus factor as reflecting both theory concentration and TMS vulnerability enables more comprehensive resilience planning.

### Implications for further research

Empirical validation requires developing measures for both Naur's theory and Wegner's TMS in software contexts, then testing integrated predictions. Specific testable hypotheses include:

1. Teams with high TMS scores should show better outcomes *contingent on* adequate distributed theory; high TMS without distributed expertise should show limited benefits.
2. Pair programming with systematic rotation should show greater bus-factor improvement than pair programming without rotation.
3. Onboarding programmes addressing both theory-building and TMS integration should produce faster autonomy than programmes addressing only one dimension.
4. Legacy system maintenance success should correlate with continuity of theory holders more strongly than documentation availability.

### Closing reflection

Naur's pessimism about knowledge transfer and Wegner's optimism about collective memory reflect different aspects of the same underlying phenomenon. Individual understanding is indeed hard to transferâ€”Naur is right about this. Yet groups demonstrably achieve collective capability through coordinationâ€”Wegner is right about this too. Software development requires both: individuals who understand deeply, and teams who coordinate effectively. Attending to only one dimension leaves the other as a vulnerability. The frameworks, integrated thoughtfully, illuminate the full challenge of software knowledge architecture and point toward practices addressing it comprehensively.