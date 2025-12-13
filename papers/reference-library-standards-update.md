# Reference Library Addition: Standards Updates (December 2025)

## Purpose

This document provides updated entries for Tier 2 standards in the reference library, reflecting:
1. The pending ISO/IEC/IEEE 12207 revision (currently FDIS stage)
2. The published ISO/IEC/IEEE 15288:2023 revision
3. The new ISO/IEC 5338:2023 AI system lifecycle standard
4. Related guidance documents

These updates support the AI-Augmented SDLC Framework's standards alignment claims.

---

## Revision Summary

### Standards Update Status (as of December 2025)

| Standard | Current Version | Revision Status | Expected Publication |
|----------|-----------------|-----------------|---------------------|
| ISO/IEC/IEEE 12207 | 2017 | FDIS ballot (Oct 2025) | Q1 2026 |
| ISO/IEC/IEEE 15288 | 2023 | Published May 2023 | â€” |
| ISO/IEC 5338 | 2023 | Published Dec 2023 | â€” |
| ISO/IEC/IEEE 24748-1 | 2024 | Published 2024 | â€” |
| ISO/IEC/IEEE 24748-2 | 2018 | FDIS stage | Q1 2026 |
| ISO/IEC/IEEE 24748-3 | Expected | Under development | 2026 |

---

## Updated Tier 2 Entries

### Software/Systems Lifecycle (Revised Table)

| Standard | Title | Use for | Notes |
|----------|-------|---------|-------|
| ISO/IEC/IEEE 12207:2017 | Software life cycle processes | Process definitions; 30 universal processes | Pending revisionâ€”see detailed entry |
| ISO/IEC/IEEE 15288:2023 | System life cycle processes | Systems engineering alignment | **Updated from 2015** |
| ISO/IEC/IEEE 15289:2019 | Information items | Document types; 73+ information items | Current |
| ISO/IEC/IEEE 29148:2018 | Requirements engineering | Requirements process guidance | Current |
| ISO/IEC/IEEE 24765:2017 | Vocabulary | Terminology definitions | Current |

### AI and ML Lifecycle (New Section)

| Standard | Title | Use for | Notes |
|----------|-------|---------|-------|
| ISO/IEC 5338:2023 | AI system life cycle processes | AI-specific process adaptations | **Newâ€”critical for AI-augmented framework** |
| ISO/IEC 22989:2022 | AI concepts and terminology | AI definitions | Foundation for 5338 |
| ISO/IEC 23053:2022 | Framework for AI systems using ML | ML system architecture | Foundation for 5338 |
| ISO/IEC 42001:2023 | AI management system | AI governance | Organisational requirements |

### Lifecycle Management Guidance (Updated)

| Standard | Title | Use for | Notes |
|----------|-------|---------|-------|
| ISO/IEC/IEEE 24748-1:2024 | Life cycle management guidelines | Life cycle concepts and models | **Updated 2024** |
| ISO/IEC/IEEE 24748-2:2018 | Guidelines for 15288 application | System lifecycle guidance | FDIS pending |
| ISO/IEC/IEEE 24748-3 (pending) | Guidelines for 12207 application | Software lifecycle guidance | Under development |

---

## Detailed Standard Entries

### ISO/IEC/IEEE 12207 (Pending Revision)

#### ISO/IEC/IEEE 12207:2017 (Current)
- **Title**: Systems and software engineering â€” Software life cycle processes
- **Source**: ISO/IEC/IEEE joint standard
- **Type**: International standard (normative)
- **Scope**: Establishes common framework for software life cycle processes; 30 processes across four groups (agreement, organisational project-enabling, technical management, technical)
- **Key characteristics**:
  - Harmonised with ISO/IEC/IEEE 15288:2015
  - Methodology-agnostic (supports waterfall, iterative, agile, DevOps)
  - Does not prescribe specific life cycle model
- **Use in framework**: Foundation for 7-phase SDLC model; process definitions; terminology alignment
- **Citation guidance**: Cite specific clauses for process definitions; note pending revision if publication timeline extends beyond Q1 2026

#### ISO/IEC/IEEE FDIS 12207 (Pending)
- **Status**: Final Draft International Standard
- **Timeline**:
  - DIS registered: December 2024
  - DIS ballot closed: June 2025
  - FDIS ballot initiated: October 2025
  - Expected publication: Q1 2026
- **Expected changes**:
  - Enhanced alignment with Agile, DevOps, and cloud-native paradigms
  - Updated alignment with ISO/IEC/IEEE 15288:2023
  - Process refinements based on industry feedback
- **Citation guidance**: Until publication, cite ISO/IEC/IEEE 12207:2017 with note: "A revision is in final ballot (FDIS stage as of December 2025) and expected for publication in early 2026."
- **Framework implications**: Review process mappings upon publication; update 7-phase SDLC alignment documentation

---

### ISO/IEC/IEEE 15288:2023

- **Title**: Systems and software engineering â€” System life cycle processes
- **Source**: ISO/IEC/IEEE joint standard
- **Type**: International standard (normative)
- **Publication**: May 2023
- **Supersedes**: ISO/IEC/IEEE 15288:2015
- **Key changes from 2015**:
  - Updated Clause 5 (key concepts) with improved description of iteration, recursion, and system-of-interest relationships
  - Enhanced complexity handling guidance
  - Continued harmonisation with ISO/IEC/IEEE 12207
- **Scope**: Common framework of process descriptions for describing the life cycle of systems; adopts systems engineering approach; applies to systems configured with hardware, software, data, humans, processes, services, procedures, facilities, materials, and naturally occurring entities
- **Relationship to 12207**: Same process model; share most activities and tasks; differ primarily in systems engineering vs. software engineering focus. When software is predominant element of interest, use 12207; otherwise use 15288.
- **Use in framework**: Systems-level context for software processes; validates methodology-independence claims
- **Citation guidance**: Update references from 15288:2015 to 15288:2023; cite specific clauses where process definitions are used

---

### ISO/IEC 5338:2023 (New Entry)

- **Title**: Information technology â€” Artificial intelligence â€” AI system life cycle processes
- **Source**: ISO/IEC JTC 1/SC 42 (Artificial intelligence)
- **Type**: International standard (normative)
- **Publication**: December 2023
- **Scope**: Defines processes and associated concepts for describing the life cycle of AI systems based on machine learning and heuristic systems
- **Foundation**: Based on ISO/IEC/IEEE 15288 and ISO/IEC/IEEE 12207 with modifications and additions of AI-specific processes from ISO/IEC 22989 and ISO/IEC 23053
- **Key characteristics**:
  - Three process types:
    1. **Generic processes**: Unchanged from 15288/12207
    2. **Modified processes**: Adapted with AI-specific particularities
    3. **AI-specific processes**: New processes unique to AI systems (e.g., data management, model training, bias monitoring)
  - Addresses AI system characteristics: data dependency, model drift, continuous learning requirements
  - Supports both ML-based and heuristic AI systems
- **Relationship to framework standards**:
  - When AI system element is traditional software: use ISO/IEC/IEEE 12207
  - When AI system element is traditional system: use ISO/IEC/IEEE 15288
  - For AI-specific elements: use ISO/IEC 5338
- **Use in framework**: 
  - Provides standards-based foundation for AI actor capability definitions
  - Supports AI-augmented SDLC phase analysis
  - Validates framework's treatment of AI as actor with specific characteristics
  - Addresses lifecycle considerations for AI components (model training, validation, monitoring)
- **Citation guidance**: Essential reference for AI-augmented framework; cite for AI-specific process adaptations; position as complementary to 12207/15288 rather than replacement
- **Quality tier**: T2 (formal international standard)

**Key processes from ISO/IEC 5338 relevant to framework:**

| Process Category | Relevant Processes | Framework Application |
|-----------------|-------------------|----------------------|
| Modified processes | Requirements definition (AI-specific) | AI capability requirements |
| Modified processes | Design definition (AI-specific) | AI architecture decisions |
| Modified processes | Verification & Validation (AI-specific) | AI testing considerations |
| AI-specific | Data management | AI training data lifecycle |
| AI-specific | ML model engineering | AI development activities |
| AI-specific | AI system operation | AI deployment patterns |

---

### ISO/IEC/IEEE 24748-1:2024

- **Title**: Systems and software engineering â€” Life cycle management â€” Part 1: Guidelines for life cycle management
- **Source**: ISO/IEC/IEEE joint standard
- **Type**: International standard (informative/guidance)
- **Publication**: 2024
- **Supersedes**: ISO/IEC/IEEE 24748-1:2018
- **Scope**: Provides guidance for life cycle management of systems and software; addresses life cycle concepts, models, stages, processes, process application, and adaptation
- **Key content**:
  - Establishes common framework for describing life cycles and individual stages
  - Describes relationship between life cycles and their use in applying processes from 15288 and 12207
  - Shows relationships to hardware, human, services, and other aspects
  - Provides detailed process-stage mapping guidance
- **Use in framework**: Supports phase-to-process mapping; validates lifecycle stage concepts; guidance for process tailoring
- **Citation guidance**: Cite for lifecycle management guidance; particularly useful for stage characterisation and process tailoring rationale

---

## Regulatory Context

### Standards Referenced in Regulations

The following regulatory frameworks increasingly reference ISO/IEC/IEEE lifecycle standards:

| Regulation | Standards Referenced | Implications |
|------------|---------------------|--------------|
| EU AI Act | ISO/IEC 5338, ISO/IEC 42001 | AI lifecycle compliance |
| FDA Software Guidance | ISO/IEC/IEEE 12207 | Medical device software |
| DO-178C (Aviation) | Aligned with 12207 concepts | Safety-critical software |
| IEC 62443 (Industrial) | References 15288/12207 | Industrial automation |

**Citation guidance**: When discussing regulatory implications, cite the specific regulation and note that it "references" or "aligns with" the standard rather than claiming direct mandate unless verified.

---

## Framework Integration Notes

### Updates Required for Framework Documents

1. **Concept 4 (7-Phase SDLC Model)**
   - Update ISO/IEC/IEEE 15288:2015 reference to 15288:2023
   - Add note about pending 12207 revision
   - Upon 12207 revision publication: verify process-to-phase mappings remain valid

2. **Concept 5 (Actor Model)**
   - Add ISO/IEC 5338:2023 as supporting reference for AI actor characterisation
   - Reference 5338's distinction between generic, modified, and AI-specific processes

3. **Reference Library**
   - Replace Tier 2 standards table with updated version
   - Add AI/ML lifecycle section
   - Add detailed entries for key standards

### Citation Pattern Updates

**Current pattern** (needs update):
> "This seven-phase model synthesises ISO/IEC/IEEE 12207:2017 process definitions..."

**Updated pattern** (after 12207 revision publishes):
> "This seven-phase model synthesises ISO/IEC/IEEE 12207:202X process definitions, maintaining alignment with the harmonised ISO/IEC/IEEE 15288:2023 system lifecycle framework..."

**For AI-augmented context**:
> "For AI system elements, the framework draws on ISO/IEC 5338:2023, which extends traditional lifecycle processes with AI-specific considerations while maintaining compatibility with ISO/IEC/IEEE 12207 and 15288."

---

## Methodological Notes

### Standards Alignment Claims

When claiming alignment with standards, distinguish between:

1. **"Defined by"**: The standard specifies this element directly
   - Example: "The 30 processes are defined by ISO/IEC/IEEE 12207:2017"

2. **"Derived from"**: Framework synthesises standard concepts
   - Example: "The seven-phase model is derived from ISO/IEC/IEEE 12207:2017 process definitions"

3. **"Aligned with"**: Framework is compatible with standard
   - Example: "The framework is aligned with ISO/IEC/IEEE 15288:2023 system lifecycle concepts"

4. **"Extends"**: Framework adds beyond standard scope
   - Example: "The actor model extends ISO/IEC 5338:2023's process categories with capability-level analysis"

### Temporal Qualification

Standards references require version specificity:

- âœ“ "ISO/IEC/IEEE 12207:2017 defines..."
- âœ“ "ISO/IEC/IEEE 15288:2023 provides..."
- âœ— "ISO 12207 defines..." (ambiguous version)

When referencing pending revisions:
> "ISO/IEC/IEEE 12207:2017 (with revision in FDIS ballot as of December 2025)"

---

## Appendix: Key Clause References

### ISO/IEC/IEEE 12207:2017 Clauses Most Relevant to Framework

| Clause | Content | Framework Use |
|--------|---------|---------------|
| 5 | Key concepts and life cycle concepts | Conceptual foundation |
| 6.1 | Agreement processes | Initiation/Planning phases |
| 6.2 | Organisational project-enabling | Organisational context |
| 6.3 | Technical management processes | Cross-phase management |
| 6.4 | Technical processes | Phase-specific activities |
| Annex A | Tailoring process | Process adaptation guidance |
| Annex B | Process reference model | Assessment compatibility |

### ISO/IEC 5338:2023 Clauses Most Relevant to Framework

| Clause | Content | Framework Use |
|--------|---------|---------------|
| 5 | Concepts | AI system characteristics |
| 6.1 | Generic processes | Unchanged from 15288/12207 |
| 6.2 | Modified processes | AI-specific adaptations |
| 6.3 | AI-specific processes | New AI lifecycle activities |
| Annex A | AI system life cycle stages | Stage characterisation |

---

*Document version: 1.0*  
*Created: December 2025*  
*Purpose: Provide updated standards references for AI-Augmented SDLC Framework*  
*Review trigger: Upon ISO/IEC/IEEE 12207 revision publication*
