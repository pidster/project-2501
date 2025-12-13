# Companion Analysis: Programming as Theory Building

## 1. Bibliographic Information

**Full Citation:**
Naur, P. (1985). Programming as theory building. *Microprocessing and Microprogramming*, 15(5), 253-261.

**Publication Type:** Journal article (peer-reviewed)

**Publication Venue:** *Microprocessing and Microprogramming*
- Historical computing journal (now discontinued)
- Published by Elsevier

**Impact Indicators:**
- Citations: 270+ (Google Scholar, as of reference library data)
- Highly influential in software engineering philosophy
- Foundational work regularly cited in discussions of tacit knowledge and software development

**Quality Tier: T1** - Peer-reviewed academic research in established journal

**Justification:** Published in peer-reviewed academic journal, represents original philosophical contribution to software engineering theory, has received sustained academic attention over nearly 40 years, cited extensively in both theoretical and empirical work on software development.

---

## 2. Source Classification

**Primary Type:**
- [x] Theoretical/conceptual paper
- [x] Philosophical argument

**Nature of Work:**
- Theoretical argument with illustrative cases
- Conceptual framework development
- Draws on author's extensive experience in software development
- Uses case studies illustratively rather than as systematic empirical evidence

**Key Contribution:**
Original philosophical argument about the fundamental nature of programming activity, proposing that programming is primarily theory-building rather than text production.

---

## 3. Methodology Assessment

### For Philosophical/Theoretical Work:

**Argumentative Structure:**
- Central thesis: Programming is fundamentally an activity of theory-building in programmers' minds
- Builds argument through logical progression:
  1. Observations from programming practice (case studies)
  2. Analysis of what these observations reveal
  3. Development of "Theory Building View" as explanatory framework
  4. Exploration of consequences and implications

**Evidence Base:**
- Author's personal experience in software development
- Illustrative case studies (e.g., Case 1: compiler development by groups A and B)
- References to established philosophical works (Ryle, Kuhn, Polanyi implicitly)
- Observations of program modification and maintenance challenges

**Logical Coherence:**
- Internally consistent argument
- Clear definitions of key terms (theory, programming, program life/death)
- Systematic exploration of implications
- Addresses potential objections to the view

**Scope of Applicability:**
- Focuses on large-scale, long-lived programs requiring modification
- Particularly concerned with program maintenance and evolution
- Explicitly addresses team-based software development
- Less applicable to trivial programs or one-off scripts

**Philosophical Foundation:**
Draws on concepts from:
- Gilbert Ryle's *The Concept of Mind* (1949) - understanding vs. knowing-that
- Thomas Kuhn's *The Structure of Scientific Revolutions* (1970) - paradigms and theories
- Michael Polanyi's work on tacit knowledge (implicitly)

**Strengths:**
- Addresses observable phenomena in software development (modification difficulty, program decay)
- Provides explanatory framework for practitioner experiences
- Challenges prevailing "production view" of programming
- Anticipates modern concerns about knowledge management

**Limitations:**
- Cases are illustrative, not systematic empirical validation
- Author's interpretation of cases, not independent verification
- Philosophical argument rather than testable hypothesis
- Limited discussion of boundary conditions or falsification criteria

---

## 4. Key Findings

| Finding | Evidence Strength | Confidence |
|---------|-------------------|------------|
| Programming is primarily theory-building in developers' minds, not text production | Weak-Moderate | Medium |
| Programs "die" when theory-holders leave, even if code remains | Weak | Medium-Low |
| Successful program modification requires possession of the underlying theory | Moderate | Medium |
| Documentation is auxiliary and secondary to theory held in minds | Weak | Medium-Low |
| There can be no "right method" for programming (as theory-building) | Weak | Low |
| Programmers should have professional status similar to engineers/lawyers | Weak | Low |
| Program text alone is insufficient for program understanding | Moderate | Medium-High |
| Modifications by programmers without theory lead to program decay | Moderate | Medium |

**Evidence Strength Notes:**
- **Weak**: Based on author's illustrative cases and philosophical argument, not systematic empirical study
- **Moderate**: Where subsequent empirical research has provided supporting evidence (noted in "Related Sources" section)
- Core insights have been influential, but original paper provides philosophical framework rather than empirical validation

**Confidence Assessment:**
- Higher confidence in descriptive claims about challenges in software development
- Lower confidence in prescriptive claims about programming methods and education
- Philosophical framework is valuable regardless of empirical validation status
- Modern empirical work has provided partial validation of core concepts

---

## 5. Limitations

### Author-Acknowledged Limitations:

**Explicitly Stated:**
- "The difficulty of accommodating such observations in a production view... suggests that this view is misleading" - acknowledges observations are interpretive
- Uses term "suggests" and "appears" indicating epistemic humility
- Notes that "to what extent [theory formation] can be taught at all must remain an open question"
- Acknowledges cases are from "my own [experience] or has been communicated to me by persons having first hand contact"

**Implicitly Acknowledged:**
- Focus on large programs requiring modification (scope limitation)
- Emphasis on particular historical context (1970s-1980s software development)

### Additional Limitations Identified:

**Temporal Context:**
- Published in 1985 - predates modern software development practices:
  - Agile methodologies
  - DevOps and continuous deployment
  - Distributed version control systems
  - Modern IDE capabilities
  - Automated testing frameworks
  - AI-assisted development tools

**Methodological Limitations:**
- No systematic data collection
- Cases selected by author to illustrate points (selection bias)
- No quantitative measures of "theory possession" or "program death"
- No control groups or comparison conditions
- Author's dual role as observer and interpreter
- Cannot distinguish correlation from causation in observed patterns

**Sample Limitations:**
- Limited to author's experience and contacts
- Temporal: 1960s-1980s software projects
- Unclear geographic and organisational diversity
- Likely bias toward large institutional projects (given author's background)
- No representation of contemporary practices

**Generalisability Constraints:**
- May not apply to small programs or scripts
- Unclear applicability to modern rapid development contexts
- May overstate the difficulty of knowledge transfer (empirically testable)
- Strong claims about impossibility of documentation may be overstated

**Conceptual Limitations:**
- "Theory" is not operationally defined in measurable terms
- No clear criteria for determining when someone "possesses the theory"
- Binary framing (theory vs. no theory) may miss gradations
- Conflates different types of knowledge (architectural, domain, implementation)

**Alternative Explanations Not Addressed:**
- Poor documentation quality rather than fundamental impossibility
- Organisational/incentive issues rather than cognitive limitations
- Technology limitations of the era
- Communication barriers unrelated to tacit knowledge

---

## 6. Known Critiques

### Published Academic Critiques:

**Methodological Criticisms:**
While Naur's work is widely respected and cited, several scholars have noted methodological limitations:

- **Empirical validation**: The philosophical argument lacks systematic empirical validation in the original paper. However, this has been partially addressed by subsequent researchers.

**Theoretical Challenges:**
- **Documentation capabilities**: Some argue Naur may have underestimated the potential of rigorous documentation methods and formal specifications developed after 1985.
- **False dichotomy**: Critics suggest Naur creates an unnecessary opposition between theory-building and text production, when both may be complementary.
- **Prescriptive overreach**: The rejection of all programming methods may be too strong; methods might support rather than replace theory-building.

**Practical Objections:**
- **Industry practice**: Many successful software projects have managed knowledge transfer and maintenance despite team changes, suggesting Naur's "program death" concept may be overstated.
- **Economic infeasibility**: The implication that programs should be rewritten when theory-holders leave is economically problematic for most organisations.

### Contradictory or Complicating Findings:

**Partial Contradictions:**
- Empirical studies of software maintenance show successful knowledge transfer is possible, though challenging
- Research on documentation practices demonstrates value beyond Naur's "auxiliary" characterisation
- Studies of distributed open-source projects show successful collaboration despite limited direct theory transfer

**Context-Dependent Applicability:**
- May be more applicable to novel, complex systems than to well-understood problem domains
- Relevance may vary with programming paradigm (procedural vs. functional vs. object-oriented)

### Scholarly Reception:

**General Assessment:**
- Widely cited and respected as foundational theoretical work
- Philosophical insights considered valuable even where empirical details are questioned
- Core concept of tacit knowledge in programming is broadly accepted
- Specific prescriptions (e.g., no methods, rewrite rather than revive) are more contested

**Status in Field:**
- Considered a "classic" paper in software engineering
- Regularly assigned reading in advanced software engineering courses
- Continues to influence discussions of knowledge management and developer experience
- Treated as philosophical foundation rather than empirical claim

**No Major Refutations:**
No published work has systematically refuted Naur's core arguments, though many have qualified or contextualised them.

---

## 7. Potential Biases

### Funding and Conflicts:
**Assessment:** No apparent commercial conflicts or funding bias
- Academic work published in peer-reviewed journal
- Author affiliated with University of Copenhagen (academic institution)
- No commercial interests evident

### Author Background and Perspective:
**Peter Naur's Context:**
- Turing Award winner (2005)
- Designer of ALGOL 60
- Extensive experience with large-scale software projects in 1960s-1970s
- Academic computer scientist with strong theoretical orientation

**Potential Biases:**
1. **Era bias**: Experience primarily from pre-1985 software development may not fully apply to modern contexts
2. **Project type bias**: Experience likely weighted toward large institutional/scientific computing projects
3. **Intellectual orientation**: Strong philosophical bent may lead to overemphasis on theoretical aspects
4. **Confirmation bias**: Cases selected to illustrate theory-building view
5. **Professional identity**: As academic and theorist, may overvalue intellectual/theoretical aspects

### Temporal and Cultural Context:
- 1985 software development culture emphasised formal methods and structured programming
- Pre-dates agile methodologies, DevOps, open-source collaboration models
- Computing resources and tools were vastly different
- Developer education and professionalisation were in different state

### Selection Bias:
- Cases drawn from author's personal experience and network
- Likely bias toward projects/contexts where theory-building challenges were salient
- Success cases with smooth knowledge transfer may be underrepresented
- "Boring" cases where standard practices worked fine are not discussed

### Philosophical Commitments:
- Draws on particular philosophical tradition (Ryle, Kuhn)
- Assumes certain views about knowledge and understanding
- May not engage adequately with alternative epistemologies

**Overall Assessment:**
While biases exist, they do not fundamentally undermine the value of Naur's philosophical contribution. The paper should be read as a theoretical framework and provocation rather than as empirical description. The biases are typical of philosophical essays and do not suggest bad faith or systematic distortion.

---

## 8. Citation Guidance

### Appropriate Uses:

**STRONG - Cite with confidence:**
1. Foundational philosophical argument that programming involves tacit knowledge
2. Historical perspective on software development challenges in program maintenance
3. Conceptual framework for discussing developer knowledge and program understanding
4. Theoretical foundation for why documentation alone is insufficient
5. Philosophical challenge to purely methodological approaches to programming

**MODERATE - Cite with methodology caveats:**
6. Evidence that programs "decay" when modified by developers lacking understanding
7. Challenges in knowledge transfer between development teams
8. Role of developer expertise in program modification decisions
9. Limitations of formal methods or rigid methodologies

**WEAK - Do not cite as primary evidence:**
10. Quantitative claims about program failure rates or modification success
11. Empirical validation of specific knowledge management practices
12. Contemporary software development practices
13. Comparative effectiveness of different documentation approaches

### Inappropriate Uses:

**DO NOT cite this source for:**
1. **Empirical evidence** about software development outcomes - it provides philosophical argument, not systematic data
2. **Modern practice recommendations** - context has changed substantially since 1985
3. **Quantified claims** - the paper makes no statistical or quantitative assertions
4. **Technology-specific guidance** - predates modern tools and practices
5. **Absolute claims** about impossibility of knowledge transfer - Naur's argument is philosophical, not empirical proof
6. **Rejection of all documentation** - Naur says it's "auxiliary," not useless
7. **Evidence against agile methods** - these didn't exist when paper was written

### Recommended Citation Phrasing:

**Good examples:**

1. "Naur (1985) argued philosophically that programming is fundamentally an activity of theory-building, with the program's 'theory' residing in developers' minds rather than being fully captured in code or documentation."

2. "The challenge of maintaining programs when original developers leave has been recognised since Naur's (1985) influential essay on programming as theory-building, though the concept of 'program death' remains contested."

3. "Drawing on Naur's (1985) theoretical framework, we recognise that software development involves substantial tacit knowledge that may not be fully documentable."

4. "Naur (1985) provided an early philosophical argument for why formal methods alone might be insufficient for programming, suggesting that theory-building is inherently not reducible to procedural rules."

**Poor examples (avoid):**

1. âŒ "Naur (1985) demonstrated that 70% of programs fail when..." - (no quantitative data in paper)

2. âŒ "Naur (1985) proved that documentation cannot transfer programming knowledge..." - (philosophical argument, not proof)

3. âŒ "According to Naur (1985), agile methods fail because..." - (agile didn't exist in 1985)

4. âŒ "Research by Naur (1985) shows..." - (implies empirical research; this is philosophical)

### Required Caveats When Citing:

**Always include when citing:**
1. Specify this is a **philosophical/theoretical argument**, not empirical research
2. Note the **1985 publication date** when discussing applicability to modern practice
3. Acknowledge that specific claims are **illustrated rather than systematically validated**

**Context-specific caveats:**
- For claims about program "death": Note this is a conceptual argument, not empirical observation
- For rejection of methods: Clarify this applies to method-as-sufficient, not method-as-useful
- For documentation limitations: Note Naur argued it is "auxiliary," not useless

**Example with appropriate caveats:**
"Naur's (1985) influential philosophical essay argued that programming is fundamentally theory-building, though this conceptual framework was developed through illustrative cases rather than systematic empirical study, and its applicability to contemporary development practices requires careful consideration."

---

## 9. Project Relevance: AI-Augmented SDLC Framework

### Direct Relevance - CRITICAL:

**1. Theoretical Foundation for Tacit Knowledge:**
- Naur provides the philosophical foundation for the 70-80% tacit knowledge claim
- Establishes why software knowledge cannot be fully documented
- Supports the framework's emphasis on theory-building vs. artifact production

**2. Information Architecture Implications:**
- Explains why different SDLC phases have different information compositions
- Provides rationale for phase-specific AI integration strategies
- Supports the argument that early phases (Initiation/Conception) are human-led

**3. AI Integration Strategy:**
- Theory-building view suggests AI is appropriately positioned as amplifier, not replacement
- Supports argument that human understanding must be preserved
- Provides theoretical justification for phase-differentiated approach

**4. Knowledge Preservation:**
- Directly addresses the "why" behind project failures
- Supports emphasis on preserving developer theories and mental models
- Provides framework for understanding knowledge transfer challenges

### Specific Claims Paper Can Support:

1. **"Software development is fundamentally about building theories in developers' minds"**
   - Direct support from Naur's central thesis
   - Can cite as foundational theoretical position

2. **"Documentation is auxiliary to theory, not a complete representation"**
   - Explicit claim in Naur
   - Must caveat as philosophical argument, not empirical finding

3. **"Programs require ongoing maintenance by theory-holders"**
   - Central to Naur's program life/death concept
   - Cite with caveat about contested nature

4. **"Loss of theory-holders leads to program decay"**
   - Key implication of Naur's work
   - Note as theoretical prediction requiring empirical validation

5. **"Rigid methodologies cannot replace developer understanding"**
   - Naur's explicit argument against method-as-sufficient
   - Relevant to positioning AI as tool, not replacement

### Integration Points in Framework:

**Section: Theoretical Foundations**
- Use Naur as primary philosophical foundation for tacit knowledge argument
- Position as foundational work establishing programming as theory-building
- Connect to Polanyi's broader work on tacit knowledge

**Section: Information Type Taxonomy**
- Reference Naur when arguing that tacit knowledge cannot be fully formalised
- Use to support distinction between formal, tacit, and emergent information

**Section: Phase-Specific Strategies**
- Apply theory-building view to explain why early phases require human-led approaches
- Use to justify phase-differentiated AI integration

**Section: Knowledge Management**
- Reference program life/death concept to motivate knowledge preservation strategies
- Connect to contemporary research on developer experience and knowledge transfer

### Gaps This Source Leaves:

1. **No empirical validation** of theory-building claims â†’ Need additional empirical sources
2. **No quantification** of tacit knowledge proportion â†’ Need empirical productivity research
3. **No specific guidance** for AI integration â†’ Need contemporary sources on AI-augmented development
4. **No measurement framework** â†’ Need sources on developer productivity metrics
5. **Pre-agile context** â†’ Need sources addressing modern methodologies
6. **No team dynamics detail** â†’ Need sources on transactive memory and team cognition

### Complementary Sources Needed:

**Must pair with:**
- Empirical validation: Hicks et al. (Developer Thriving), productivity research
- Quantification: DORA metrics, SPACE framework
- Modern context: Contemporary DevEx research, AI-augmented development studies
- Team aspects: Wegner (Transactive Memory), team cognition research
- Measurement: Validated instruments for tacit knowledge assessment

---

## 10. Related Sources

### Complementary Sources (Support and Extend):

**Philosophical/Theoretical Foundations:**
1. **Polanyi, M. (1966).** *The Tacit Dimension.* University of Chicago Press.
   - Broader philosophical foundation for tacit knowledge concept
   - Establishes "we can know more than we can tell"

2. **Ryle, G. (1949).** *The Concept of Mind.* Penguin.
   - Distinction between "knowing-how" and "knowing-that"
   - Philosophical foundation for Naur's theory concept

**Empirical Validation and Extension:**
3. **Hicks, C., et al.** Developer Thriving: Four Sociocognitive Factors...
   - Contemporary empirical validation of cognitive aspects
   - Validated instrument for measuring developer experience
   - Connects theory-building to thriving and productivity

4. **Development of a Team Measure for Tacit Knowledge** (Project PDF)
   - Attempts to operationalise and measure tacit knowledge
   - Provides empirical approach to Naur's concepts

**Knowledge Management in Teams:**
5. **Wegner, D. M.** Transactive Memory...
   - Theory of distributed team knowledge
   - Complements Naur's individual theory with team perspective

**Modern Software Development:**
6. **Graziotin, D., et al.** Today Was a Good Day...
   - Contemporary empirical research on developer experience
   - Connects affect, cognition, and productivity

### Contradictory or Challenging Sources:

**Documentation and Knowledge Transfer:**
1. Research on successful open-source collaboration despite limited direct contact
2. Studies showing effectiveness of comprehensive documentation practices
3. Research on formal methods and specification techniques developed post-1985

**Methodology Research:**
1. Empirical validation of agile methodology effectiveness
2. Research showing positive effects of structured development processes
3. Studies of successful knowledge transfer practices

### Subsequent Work Building On Naur:

**Direct Extensions:**
1. Academic papers citing Naur on tacit knowledge in software engineering
2. Research on developer cognition and mental models
3. Studies of program comprehension and maintenance

**Practical Applications:**
1. Knowledge management practices in software organisations
2. Documentation strategies informed by tacit knowledge understanding
3. Team formation and developer onboarding research

### Critiques and Refinements:

**Methodological Critiques:**
1. Calls for empirical validation of theory-building claims
2. Research providing nuanced view of documentation effectiveness
3. Studies showing successful knowledge transfer despite team changes

**Theoretical Refinements:**
1. More nuanced taxonomies of software development knowledge
2. Research on different types of tacit knowledge
3. Work on boundary objects and artifacts that facilitate theory transfer

### For Comprehensive Treatment:

**Essential Pairing:**
To use Naur rigorously in academic work, pair with:
- **Polanyi** for philosophical foundation
- **Hicks et al.** for contemporary empirical validation
- **Wegner** for team knowledge perspective
- **DORA/SPACE** for measurement frameworks
- **Contemporary DevEx research** for modern context

**Historical Context:**
- Brooks, F. (1975). *The Mythical Man-Month*
- Dijkstra, E. (1972). The Humble Programmer
- Parnas, D. (1972). On the Criteria to Be Used in Decomposing Systems into Modules

---

## Additional Notes

### Citation Count and Influence:

**Academic Impact:**
- 270+ citations (per reference library)
- Regular inclusion in software engineering curricula
- Cited across multiple disciplines (CS, IS, HCI, organizational studies)

**Practical Influence:**
- Influenced agile movement's emphasis on people over processes
- Affected discussions of developer experience and productivity
- Shaped understanding of knowledge management challenges

### Modern Relevance:

**Increased Relevance:**
The paper's relevance has arguably *increased* over time due to:
- Growing complexity of software systems
- Distributed team challenges
- Recognition of developer experience importance
- Rise of DevEx research field
- Challenges of AI-assisted development (preserving human understanding)

**Contemporary Debates:**
Naur's work informs current discussions about:
- AI pair programming and copilots (theory vs. text generation)
- Remote work and knowledge sharing
- Developer onboarding and retention
- Technical debt and software entropy
- Documentation practices in agile environments

### Key Quotes for Citation:

*Note: These should be paraphrased in final paper, included here for reference*

1. On the central thesis: "programming properly should be regarded as an activity by which the programmers form or achieve a certain kind of insight, a theory"

2. On knowledge location: "knowledge taken to be basically the programmers' immediate possession, any documentation being an auxiliary, secondary product"

3. On program death: "the program itself, the theory of it, is something that could not conceivably be expressed"

4. On methods: "for the primary activity of the programming there can be no right method"

---

*Analysis Generated: 27 November 2025*
*Analyst: Claude (Sonnet 4.5)*
*Version: 1.0*

---

## Document History

**Version 1.0** (27 Nov 2025)
- Initial companion analysis
- Based on project knowledge search and reference library
- Comprehensive assessment of philosophical argument
- Detailed citation guidance for academic use

**Review Status:** Ready for use in AI-Augmented SDLC Framework paper

**Recommended Citation Check:** Verify specific quotes and page numbers against original text before final submission
