# Key Reference Concept 2: Theory-Building Principle

## Definition

Programming is fundamentally an activity of theory building, not text production. Peter Naur (1985) argued that **the primary product of software development is the theory that exists in programmers' minds, not the code or documentation they produce**. This theory is knowledge that enables not just making the code work, but explaining how it relates to real-world problems, justifying why design decisions were made, and responding intelligently to modification demands. The theory cannot be reduced to rules or procedures and resists complete articulation—it is inherently tacit knowledge held by those who built or deeply studied the system. When the team holding the theory dissolves, the program effectively "dies" even while code continues executing, because intelligent modification becomes impossible without that understanding.

## Ryle's Concept of Theory

Naur builds on philosopher Gilbert Ryle's concept of theory as knowledge that enables intelligent action **plus** explanation, justification, and argumentation. This goes beyond both "knowing that" (factual knowledge) and "knowing how" (skill). A programmer with theory can not only make code work (skill) and recall facts about it (knowledge), but can explain **why** the solution is structured as it is, justify design decisions over alternatives, and respond constructively to novel modification demands. Critically, Ryle argued that theory cannot be reduced to rules or procedures—"the very act of adhering to rules can be done more or less intelligently; if the exercise of intelligence depended on following rules there would have to be rules about how to follow rules, and about how to follow the rules about following rules, etc. in an infinite regress." This demolishes the notion that programming knowledge can be fully codified.

## Theory vs Artifacts

| Aspect | Theory (in programmers' minds) | Artifacts (code, documentation) |
|--------|-------------------------------|--------------------------------|
| **Nature** | Coherent understanding enabling explanation and justification | Text and diagrams capturing some aspects of the solution |
| **Location** | Resides in human minds, distributed across team | Exists in repositories, documents, wikis |
| **Completeness** | Can address novel situations and unanticipated modifications | Covers only what was explicitly documented |
| **Transferability** | Requires mentoring, pair programming, immersion | Can be copied but not fully understood from text alone |
| **Modification capability** | Enables recognising similarities between new demands and existing facilities | Provides structure to modify but not understanding of why |
| **Decay** | Degrades when team members leave or context is forgotten | Remains stable but becomes increasingly divorced from understanding |
| **Verification** | Cannot be formally verified but enables judgement | Can be formally verified against specifications |

## Three Essential Areas of Theory

Naur identified three aspects that theory encompasses, all of which transcend what documentation can capture:

**Mapping between real-world affairs and program structure**: Understanding which aspects of reality the program addresses and how program elements correspond to them. This requires domain understanding that cannot be fully specified—someone must understand what matters and what doesn't.

**Design rationale and justification**: Knowing why each part is structured as it is, including alternatives considered and rejected. This rationale is grounded in programmers' direct, intuitive knowledge and cannot be reduced to rules.

**Modification capabilities**: Recognising similarities between new demands and existing facilities—"similarities that cannot be reduced to any limited set of criteria or rules, much like recognising faces or tunes." This pattern recognition enables efficient modification within the existing conceptual framework.

## Key Implications

**For documentation strategy**: Documentation is necessary but insufficient. It supports theory building but cannot replace it. Documentation should focus on capturing "why" (rationale, alternatives, context) not just "what" (specifications, structures). Practices like Architecture Decision Records (ADRs) that explicitly capture reasoning are particularly valuable.

**For team stability and knowledge transfer**: Team continuity preserves theory. When team members leave, theory degrades even with perfect documentation. Knowledge transfer requires active approaches—pair programming, mentoring, communities of practice—not just document handoffs. The "bus factor" problem is real and requires mitigation through distributed theory building.

**For technical debt and system decay**: Systems degrade over time not because code rots but because theory is lost. New developers without the original theory make modifications that fight the system's inherent logic rather than working with it. This is why systems become "legacy"—the theory dies while code survives.

**For AI-augmented development**: As of 2024-2025, AI systems generate code but do not build theory in Naur's sense—they produce artifacts without the explanatory understanding that enables intelligent modification. Over-reliance on AI-generated code without human understanding creates "theoretically orphaned implementations"—code that nobody truly understands. Developers must build theory about AI-generated code through review and comprehension, not just acceptance.

**For theory-building activities**: Certain activities fundamentally build theory and benefit from human leadership: architecture definition, problem framing, design rationale capture, and modification judgement. AI can support these activities through Partnership patterns with appropriate escalation, but organisations should deliberately preserve human engagement at theory-building decision points. Excessive automation of these activities risks theory atrophy—developers losing the understanding necessary for intelligent system evolution.

## Integration with Other Concepts

- [**Transactive Memory Systems**](./foundation_transactive-memory.md): TMS coordinates access to theory at the team level but cannot substitute for it. Individual theory (Naur) provides content; TMS (Wegner) enables coordination. Both are necessary for effective teams.
- [**Naur-Wegner Integration**](./integration_naur-wegner.md): Detailed analysis of how individual theory-building and team transactive memory interact, with integrated predictions and practical implications.
- [**Information Composition Taxonomy**](./concept_information-taxonomy.md): Theory is what makes tacit knowledge tacit—it's the understanding in developers' minds that resists complete articulation. Theory-building activities necessarily involve high tacit knowledge content.
- [**Eight-Capability Taxonomy**](./concept_capability-model.md): Some capabilities (Synthesise, Decide) contribute more to theory building than others (Transform, Preserve). Understanding which capabilities build theory helps identify where human engagement is essential.
- [**Seven-Phase SDLC Model**](./concept_seven-phase-sdlc.md): Theory building occurs throughout the lifecycle, not just during coding. Early phases build theory about the problem space; middle phases about solution structure; later phases about implementation and operation.
- [**Actor Model**](./concept_actor-model.md): Humans build theory through engagement with problems; current AI systems do not. This asymmetry shapes which activities benefit from human leadership, though well-designed escalation mechanisms enable AI participation while preserving human theory-building engagement.
- [**Five Collaboration Patterns**](./concept_collaboration-patterns.md): Activities that build theory benefit from Human-Only or Human-Led patterns to preserve developers' understanding. Partnership patterns with deliberate escalation at decision points can preserve theory building while leveraging AI capabilities for supporting work.
- [**Information Loss at Transitions**](./concept_transitions-info-loss.md): Theory loss at phase boundaries is severe because theory resists documentation. Explicit mitigation strategies are required to transfer theory across transitions.

## Evidence Base

Naur's original paper (1985) documented two case studies where teams with full documentation and even personal advice from original developers still struggled to modify systems intelligently. Subsequent research has validated his core insight through studies showing 2-3x longer bug fix times without original developer contact despite comprehensive documentation. The tacit knowledge literature (Polanyi 1966, Nonaka & Takeuchi 1995) provides theoretical grounding for why theory resists articulation. Modern research on pair programming, collective code ownership, and shared mental models demonstrates that theory can be transferred but requires active engagement, not just document reading. Studies of legacy system maintenance consistently show that lack of original developer knowledge is a primary challenge.

## Validation Status

- ✓ **Core insight**: Broadly validated—documentation alone is insufficient for intelligent modification
- ✓ **Theory as tacit knowledge**: Well-grounded in organisational learning and knowledge management literature
- ⚠ **Theory as binary (alive/dead)**: More accurately a continuum—partial theory enables partial intelligent modification
- ⚠ **Revival as impossible**: Naur's pessimism appears overstated—modern practices (ADRs, clean code, comprehensive documentation) enable better theory reconstruction than 1985 practices
- ⚠ **Rewrite recommendation**: Widely contested by practitioners—rewrites carry high risk and cost
- ⚠ **AI impact on theory**: New concern requiring validation—does AI code generation lead to theory atrophy as feared?

---

*The Theory-Building Principle explains why tacit knowledge exists and why it matters. Theory is the coherent understanding in developers' minds that enables intelligent system evolution. This understanding shapes all framework concepts—it's why certain activities must remain human, why documentation strategies vary, and why measurement must account for both artifacts and understanding.*
