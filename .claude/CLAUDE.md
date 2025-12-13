# AI-Augmented SDLC Framework

## Project Overview

This project develops a comprehensive AI-Augmented Software Development Lifecycle (SDLC) Framework grounded in empirical research and theoretical foundations. The framework bridges theoretical software engineering concepts with practical implementation guidance, targeting publication in top-tier academic venues such as IEEE Transactions on Software Engineering.

**Core thesis**: Software development is fundamentally about building shared mental models ("theories") in developers' minds, with 70-80% of software knowledge being tacit rather than documented. This has profound implications for AI integration, as different SDLC phases have vastly different information compositions requiring different human-AI collaboration patterns.

## Document Architecture

### Core Concept Documents (01-16)

The framework comprises 16 interconnected concept documents:

| Document | Topic | Key Content |
|----------|-------|-------------|
| `01_information_taxonomy.md` | Information types | Formal/Tacit/Emergent knowledge classification |
| `02_theory_building.md` | Naur's theory | Programming as theory-building, tacit knowledge |
| `03_capability_model.md` | Eight capabilities | Elicit, Analyse, Synthesise, Transform, Validate, Decide, Generate, Preserve |
| `04_7phase_SDLC.md` | Phase structure | Seven-phase model with ISO 12207 alignment |
| `05_actor_model.md` | Actor types | Human, AI, and hybrid actor characterisation |
| `06_phase_specific_composition.md` | Phase information | Formal/tacit/emergent percentages per phase |
| `07_collaboration_patterns.md` | Five patterns | Human-Only, Human-Led, Partnership, AI-Led, AI-Only |
| `08_transitions_info_loss.md` | Information loss | 35-55% loss at phase transitions |
| `09_phase_aware_measurement.md` | Measurement | Phase-specific metrics and validation |
| `10_guidance_architecture.md` | Three layers | Process Abstractions → Application Framework → Implementation Patterns |
| `11_performance_measures_sdlc_phases_analysis.md` | Evidence analysis | Rigorous assessment of software metrics |
| `12_ISO-IEC-IEEE-12207_processes_enumeration.md` | Standards mapping | 30 ISO processes mapped to seven phases |
| `13_framework_integration_architecture.md` | Integration | How all concepts connect |
| `14_implementation_guide.md` | Application | Practical guidance for organisations |
| `15_document_type_classification_framework.md` | Document types | Standing/Dynamic/Ephemeral classification |
| `16_process_capability_flow_specification_framework.md` | Process specs | Schema for capability instance specifications |

### Supporting Documents

- `Example_3_1_document_type_registry.md` — Phase 3 document type exemplar
- `Example_3_2_capability_flow_specifications.md` — Phase 3 capability flow exemplar
- `*_CompanionAnalysis.md` — Quality assessments for key academic sources
- `reference_library_*.md` — Reference management and quality standards
- `sts_software_meta_analysis.md` — Socio-technical systems evidence synthesis

### Primary Sources (PDFs)

Key theoretical foundations with companion analyses:
- Naur (1985) — Programming as Theory Building
- Wegner (1986) — Transactive Memory
- Ryan & O'Connor — Team Tacit Knowledge Measure
- Meyer et al. — "Today was a Good Day" developer experience
- Hicks et al. — Developer Thriving
- Storey et al. — Productivity and Quality tradeoffs

## Key Theoretical Foundations

### Naur's Theory-Building (1985)

Software development involves building a "theory" in developers' minds—understanding of problem space, solution rationale, and modification implications. This theory cannot be fully documented; losing theory-holding developers causes "program death."

**Implication**: AI cannot replace human theory-building but can support it.

### Wegner's Transactive Memory (1986)

Teams develop shared knowledge systems where members know *who knows what* rather than everyone knowing everything. This distributed cognition enables collective capability exceeding individual capacity.

**Implication**: AI tools must integrate with team knowledge structures, not replace them.

### Phase Information Composition

Different phases have different formal/tacit/emergent ratios:

| Phase | Formal | Tacit | Emergent |
|-------|--------|-------|----------|
| 1. Initiation | 15% | 75% | 10% |
| 2. Planning | 35% | 55% | 10% |
| 3. Requirements | 30% | 55% | 15% |
| 4. Design | 45% | 40% | 15% |
| 5. Implementation | 55% | 30% | 15% |
| 6. Testing | 60% | 25% | 15% |
| 7. Operations | 60% | 30% | 10% |

**These are derived estimates**, not empirically measured values. Present as "approximate compositions" for guidance, not precise measurements.

### Three-Layer Guidance Architecture

The framework occupies Layer 2 in a three-layer model:

1. **Layer 1: Process Abstractions** (decadal stability) — ISO/IEC/IEEE standards
2. **Layer 2: Application Framework** (annual updates) — This framework
3. **Layer 3: Implementation Patterns** (continuous change) — Tool-specific practices

## Evidential Standards

### Evidence Tiers

| Tier | Type | Causal Inference |
|------|------|------------------|
| T1 | Experimental/Quasi-experimental | Can support causation |
| T2 | Longitudinal/Panel | Establishes temporal precedence only |
| T3 | Cross-sectional with controls | Correlation only |
| T4 | Descriptive/Case study | Association only |

### Strong Evidence (cite confidently)

- **DORA metrics**: N=39,000+ professionals, validated for Phases 5-7
- **Developer Thriving**: r=0.43 with productivity (Hicks et al., N=2,600+)
- **Good Day factors**: 60.6% good days validated (Meyer et al., N=5,971)
- **TTKM**: r=0.35 with team effectiveness (Ryan & O'Connor, N=48 teams)

### Weak Evidence (do not cite as primary)

- **CHAOS/Standish statistics**: Methodologically contested; "Standish opinion"
- **39-47% requirements failure**: No systematic review, wildly varying figures
- **Boehm's 50-200x cost curve**: 1970s waterfall data, not validated in modern contexts

### Evidential Language

Use language that signals evidential weight:

```markdown
✓ "Research indicates..." (for peer-reviewed findings)
✓ "Synthesis of evidence suggests..." (for derived conclusions)
✓ "Estimated at approximately..." (for reasoned approximations)
✓ "For illustrative purposes..." (for worked examples)

✗ Avoid presenting derived figures as directly measured
✗ Avoid absolute statements about AI capabilities without temporal qualification
```

## Writing Standards

### British English

Use British spelling throughout: organise, colour, behaviour, analyse, centre, etc.

### Temporal Qualification

Always qualify AI capability claims:

```markdown
✗ "AI cannot build theory"
✓ "Current AI systems (as of 2024-2025) do not build theory in Naur's sense—they generate artefacts without developing the explanatory understanding that enables maintenance and extension"
```

### Prescriptive vs Descriptive Voice

Maintain separation between:
- **Descriptive**: "This phase exhibits..."
- **Analytical**: "Research indicates..."
- **Prescriptive**: "Organisations should..."

Signal transitions between modes. Consider separate "Recommendations" sections.

### Quantitative Claims

When making quantitative claims:
1. **Directly measured** — cite specific study, sample size, methodology
2. **Derived from synthesis** — explain reasoning chain and source inputs
3. **Estimated or illustrative** — state explicitly as approximations

### Standards Alignment

When referencing ISO/IEC/IEEE standards:
- Distinguish "defined by" (standard specifies) from "synthesised from" (framework derives)
- Note specific standard version and year
- Acknowledge where framework extends beyond standard

Example:
> "This seven-phase model synthesises ISO/IEC/IEEE 12207:2017 process definitions into lifecycle stages; the phase boundaries and actor patterns are framework constructs, not ISO-defined elements."

## Document Cross-References

Concepts are interconnected. When editing, maintain consistency across:

- **Capability definitions** — Concept 3 is authoritative
- **Phase structure** — Concept 4 is authoritative
- **Actor patterns** — Concept 5 is authoritative
- **Collaboration patterns** — Concept 7 is authoritative
- **Information composition percentages** — Concept 6 is authoritative

If content appears in multiple documents, the lower-numbered concept document is typically authoritative.

## Common Pitfalls to Avoid

1. **Overgeneralising actor suitability** — Determine at capability *instance* level, not broad capability categories
2. **Treating phase percentages as measured** — They are derived estimates for guidance
3. **Citing CHAOS/Standish as evidence** — Methodologically problematic
4. **Making absolute AI capability claims** — Always temporally qualify
5. **Optimising early phases for speed** — Understanding-heavy phases shouldn't prioritise velocity
6. **Conflating correlation with causation** — Most evidence is correlational (Tier 3)
7. **Using American spellings** — British English throughout

## Key Statistics to Know

| Metric | Value | Source | Evidence Tier |
|--------|-------|--------|---------------|
| Developer thriving → productivity | r=0.43 | Hicks et al. 2024, N=2,600+ | T3 |
| TTKM → team effectiveness | r=0.35 | Ryan & O'Connor 2013, N=48 | T3 |
| Mirroring hypothesis support | 69% of studies | Colfer & Baldwin 2016, N=142 | Meta-analysis |
| Good day prevalence | 60.6% | Meyer et al. 2019, N=5,971 | T3 |
| PR dwell time (bad days) | +48.84% | Obi et al. 2024 | T3 |

## Editing Workflow

When making changes:

1. **Check cross-references** — Update all documents that reference changed content
2. **Verify percentage sums** — Ensure formal+tacit+emergent = 100%
3. **Maintain terminology consistency** — Use glossary terms exactly
4. **Preserve evidence citations** — Don't remove sample sizes or study references
5. **Test Mermaid diagrams** — Ensure syntax is valid

## File Naming Conventions

- Core concepts: `NN_descriptive_name.md` (01-16)
- Examples: `Example_N_N_description.md`
- Companion analyses: `AuthorYear_Topic_CompanionAnalysis.md`
- Reference materials: `reference_*.md`

## Useful Commands

```bash
# Find all references to a term
grep -r "term" *.md

# Check for American spellings
grep -rE "(organize|color|behavior)" *.md

# Verify markdown link integrity
grep -oE '\[.*\]\(.*\.md\)' *.md | sort | uniq
```

## Contact/Context

This framework is being developed for academic publication targeting IEEE Transactions on Software Engineering. The work synthesises existing research rather than presenting new empirical findings, building a conceptual framework that addresses why software projects fail despite AI advancement.

Primary theoretical tension: How do we integrate AI capabilities into software development while preserving the tacit knowledge and theory-building that determine project success?
