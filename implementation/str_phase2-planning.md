---
id: STR-002
type: STR
title: Phase 2 Planning - AI-Augmented SDLC Framework
scope: Project
temporal_class: Standing
status: DRAFT
version: 1
created: 2026-01-14
author: human:pidster

references:
  - id: STR-001
    relationship: DERIVES_FROM
  - id: THY-001
    relationship: REFERENCES

str:
  phase: 2
  outputs:
    project_plan: complete
    resource_allocations: complete
    risk_register: complete
    governance_structure: complete
  transition:
    event: SCOPE_BOUNDED
    ready: true

tags:
  - strategy
  - phase-2
  - planning
---

# STR-002: Phase 2 Planning

## Purpose

This document captures the Phase 2 (Planning) outputs for the AI-Augmented SDLC Framework project. It addresses how work will be organised and executed.

**Phase 2 Focus**: How—Project organisation, resource allocation, risk management, governance structure.

---

## 1. Project Plan

### 1.1 Work Breakdown

Work items consolidated from existing planning and identified gaps:

| ID | Work Item | Phase | Dependencies | Status |
|----|-----------|-------|--------------|--------|
| **SH-1** | Information Reference Schema | 3 | None | Pending |
| **SH-2** | Resolution Interface | 5 | SH-1 | Pending |
| **SH-3** | Context Graph Schema | 3 | SH-1 | Pending |
| **SH-4** | Graph Storage Investigation | 2 | None | **Complete** |
| **SH-5** | Phase 1 Initiation | 1 | None | **Complete** |
| **SH-6** | Phase 2 Planning | 2 | SH-5 | **In Progress** |
| **SH-7** | Retrofit vs Forward Decision | 2 | SH-5, SH-6 | Pending |
| **CD-1** | THY-003 Conceptual Debt | 3 | None | Pending |

### 1.2 Sequencing

```
Phase 1 (Complete)
  └── SH-5: Phase 1 Initiation ✓

Phase 2 (Current)
  ├── SH-4: Graph Storage Investigation ✓
  ├── SH-6: Phase 2 Planning (this document)
  └── SH-7: Retrofit vs Forward Decision

Phase 3 (Requirements/Design)
  ├── SH-1: Information Reference Schema
  ├── SH-3: Context Graph Schema
  └── CD-1: THY-003 Conceptual Debt (F-2, I-3 extensions)

Phase 5 (Implementation)
  └── SH-2: Resolution Interface
```

### 1.3 Approach

**Iterative, self-hosting**: Each phase produces artifacts using the framework's own guidance, validating coherence as we go.

**Minimal viable outputs**: Sufficient formality to test the framework, not enterprise-grade documentation.

---

## 2. Resource Allocations

### 2.1 Actors

| Actor | Role | Availability |
|-------|------|--------------|
| **human:pidster** | Theory-holder, decision-maker | Part-time research |
| **ai:claude** | Assistant—analysis, synthesis, generation, validation | On-demand |

### 2.2 Collaboration Patterns by Work Item

| Work Item | Pattern | Rationale |
|-----------|---------|-----------|
| SH-1, SH-3 | Partnership | Schema design requires both human insight and AI synthesis |
| SH-2 | AI-Led | Implementation work; human review |
| SH-7 | Human-Led | Strategic decision about existing artifacts |
| CD-1 | Partnership | Conceptual extension requires human understanding + AI drafting |

### 2.3 Infrastructure

- Local filesystem for document storage
- Claude Code for AI assistance
- Git for version control
- No additional infrastructure required

---

## 3. Risk Register

Risks from STR-001 §2.4 remain current. Additional planning-phase risks:

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| **Scope creep** | Medium | Medium | Minimal viable outputs; strict scope boundaries |
| **Over-engineering** | Medium | Low | Light-touch approach; iterate rather than perfect |
| **Context loss between sessions** | High | Medium | Decision/observation logging; THY documents; session summaries |
| **Conceptual debt accumulation** | Medium | Medium | Track explicitly (CD-1); address before implementation |

---

## 4. Governance Structure

Governance from STR-001 §4.4 applies. Additional planning-phase specifics:

### 4.1 Decision Authority

| Decision Type | Authority | Process |
|---------------|-----------|---------|
| Strategic (scope, direction) | Human | Human decides; AI may propose |
| Tactical (approach, sequencing) | Human-Led | AI proposes; human approves |
| Operational (drafting, formatting) | Partnership/AI-Led | AI executes; human reviews |

### 4.2 Review Points

| Checkpoint | Trigger | Action |
|------------|---------|--------|
| Phase transition | SCOPE_BOUNDED, etc. | Explicit sufficiency assessment |
| Work item completion | Item done | Update status; log observation |
| Significant decision | Strategic/tactical choice | Log decision with rationale |

### 4.3 Change Management

- Changes to scope require explicit decision logging
- Work items can be added/removed with rationale
- Phase outputs are living documents (versioned)

---

## 5. Phase 2 Completion Criteria

### Sufficiency Assessment

| Output | Status | Sufficient for Phase 3? |
|--------|--------|------------------------|
| Project Plan | DRAFT | ✓ Work items identified and sequenced |
| Resource Allocations | DRAFT | ✓ Actors and patterns assigned |
| Risk Register | DRAFT | ✓ Planning risks identified |
| Governance Structure | DRAFT | ✓ Authority and review points defined |

### Transition Readiness

**SCOPE_BOUNDED**: [✓] Resources allocated, timeline agreed, risks identified

**Rationale**: Work items defined; collaboration patterns assigned; SH-7 decision made (Hybrid retrofit). Sufficient clarity to proceed to Phase 3.

---

## Open Decisions

### SH-7: Retrofit vs Forward

**Question**: How do we handle existing framework artifacts (concepts/, papers/, etc.) in the self-hosting exercise?

**Options**:
1. **Retrofit**: Treat existing artifacts as Phase 3+ outputs; add frontmatter/classification
2. **Forward only**: Focus on new artifacts; existing ones remain as-is
3. **Hybrid**: Retrofit key documents (foundations, core concepts); forward for others

**Decision**: **Hybrid** (DEC-20260114-091633)

**Scope**: Retrofit documents referenced by THY-001/REF-001; forward-only for remaining documents.

**Rationale**: Key conceptual documents need frontmatter for Context Graph integration; avoid unnecessary work on peripheral documents.

---

## Document Relationships

| Document | Relationship |
|----------|-------------|
| [STR-001](./str_phase1-initiation.md) | Phase 1 outputs; business case and charter |
| [THY-001](./theory_framework.md) | Framework theory guiding this work |

---

*This document provides the Phase 2 Planning outputs for the AI-Augmented SDLC Framework. Light-touch approach appropriate for research-scale project.*

---

**Document History**:
- v1 (14 January 2026): Initial draft with minimal outputs
