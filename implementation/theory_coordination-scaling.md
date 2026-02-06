---
id: THY-007
type: THY
title: Coordination Scaling in AI-Augmented Teams
scope: Project
temporal_class: Standing
status: DRAFT
version: 1
created: 2026-02-06
author: human:pidster

references:
  - id: THY-005
    relationship: DERIVES_FROM
  - id: THY-006
    relationship: DERIVES_FROM
  - id: F-2
    relationship: REFERENCES
  - id: F-3
    relationship: REFERENCES
  - id: C-8
    relationship: REFERENCES

thy:
  covers:
    problem_mapping: true
    design_rationale: true
    modification_patterns: true
    invalidation_conditions: true

tags:
  - theory
  - coordination
  - scaling
  - teams
  - coherence
---

# THY-007: Coordination Scaling in AI-Augmented Teams

## Purpose

This document captures the integrated understanding that AI augmentation creates a coordination scaling paradox: individual productivity increases linearly while coordination complexity scales super-linearly, making coherence—not production—the bottleneck in later SDLC phases.

**Core thesis**: When AI augments individual developers, each person produces more artifacts, makes more decisions, and generates more changes. But coordination between team members scales with the square of interactions, not linearly with production. The Process Orchestrator (THY-005) using the context graph (THY-006) must provide sub-linear coordination scaling to prevent the productivity gains from being consumed by coordination overhead.

---

## 1. Problem Mapping

*What real-world concern does this theory address?*

### The Coordination Scaling Paradox

AI augmentation promises productivity gains. Consider a team of N developers:

| Metric | Without AI | With AI | Scaling |
|--------|-----------|---------|---------|
| **Individual output** | X artifacts/day | 2-5X artifacts/day | Linear per person |
| **Decisions per day** | D | 2-5D | Linear per person |
| **Changes per day** | C | 2-5C | Linear per person |
| **Coordination points** | N(N-1)/2 | N(N-1)/2 | Unchanged |
| **Conflict probability** | P(C) | P(2-5C) | Super-linear with output |

The paradox: augmented productivity increases the *volume* of work requiring coordination while the coordination capacity remains bounded by human cognitive limits and team structure. More artifacts mean more potential conflicts. More decisions mean more consistency checks. More changes mean more integration points.

### Brooks's Law Revisited

Brooks's Law states: "Adding manpower to a late software project makes it later." The mechanism is coordination overhead scaling faster than production capacity.

AI augmentation creates an analogous dynamic without adding people:
- Each developer produces more, creating the coordination load of a larger team
- But the coordination mechanisms (meetings, reviews, architecture) don't scale automatically
- The AI increases production throughput but not coordination throughput
- Result: coordination becomes the bottleneck faster than in non-augmented teams

### Coherence as Bottleneck in Later Phases

The framework's phase model (C-3) shows that later phases (Design, Implementation, Testing, Operations) have higher formal information composition. This means:

| Phase | Information Composition | Coordination Need |
|-------|------------------------|-------------------|
| 1-3 (Initiation, Planning, Requirements) | High tacit (50-75%) | Lower: fewer formal artifacts to coordinate |
| 4-7 (Design, Implementation, Testing, Operations) | High formal (50-60%) | Higher: many formal artifacts requiring consistency |

In phases 4-7, each formal artifact (design decision, code module, test case, deployment config) must be consistent with every other. AI augmentation multiplies the artifact count while the consistency requirement remains exhaustive.

---

## 2. Design Rationale

*Why does coordination require explicit architectural support? How does this shape the framework?*

### Why Continuous Coordination, Not Just Phase Gates

Traditional coordination happens at phase gates: reviews, approvals, handoffs. This is insufficient when:

| Traditional Approach | Why Insufficient with AI Augmentation |
|---------------------|--------------------------------------|
| **Phase gate reviews** | Artifacts accumulate faster; reviews become bottlenecks |
| **Scheduled sync meetings** | Decisions happen between meetings; staleness increases |
| **Architecture documents** | Change faster than documents update; drift undetected |
| **Code reviews** | Volume overwhelms reviewers; quality degrades |

Continuous coordination means monitoring coherence as work progresses, not just at checkpoints. The Process Orchestrator provides this through continuous context graph queries.

### Why Context Graph Is the Coordination Substrate

The context graph (THY-006) serves as the coordination substrate because:

| Coordination Need | Graph Mechanism |
|-------------------|-----------------|
| **Conflict detection** | CONTRADICTS edges between observations/decisions |
| **Dependency tracking** | REQUIRES and DERIVES_FROM edges |
| **Impact assessment** | Traverse INFORMS and REFERENCES edges |
| **Staleness detection** | Temporal queries on node timestamps |
| **Coverage analysis** | Gap detection via missing expected edges |

The graph makes coordination queryable rather than meeting-dependent.

### Why Process Orchestrator Is the Coordination Point

From THY-005, the Process Orchestrator manages phase and process concerns. Coordination is inherently a process concern:

- It requires systematic monitoring (not human-intuitive)
- It must be continuous (not episodic)
- It generates structured findings (not conversational insights)
- It escalates only when human judgement is needed

This maps precisely to the Orchestrator's operational model: systematic, internal, escalation-based.

### The Scaling Model

For AI-augmented teams, the scaling model must be:

```
Production throughput:  O(N × AI_multiplier)     — linear scaling
Coordination overhead:  O(f(graph_density))       — must be sub-linear
```

Where `f(graph_density)` grows slower than the production rate. This is achievable because:

1. **Graph queries are O(edges)**, not O(artifacts²) — structural traversal, not exhaustive comparison
2. **Incremental monitoring** — only check new/changed nodes, not entire graph
3. **Pattern-based detection** — known conflict patterns, not arbitrary consistency checks
4. **Severity-based escalation** — only surface issues requiring human judgement

### Extending C-8 (Work Coordination)

C-8 describes work coordination patterns for AI-augmented teams. THY-007 extends this with:

| C-8 Concept | THY-007 Extension |
|-------------|-------------------|
| Task allocation | Continuous rebalancing based on graph state |
| Dependency management | Graph-traversal dependency detection |
| Conflict resolution | Automated detection; severity-based escalation |
| Progress tracking | Graph density and coverage metrics |

---

## 3. Modification Patterns

*How should the coordination system evolve?*

### Pattern: Detecting Coordination Conflicts

**Recognise this situation**: Multiple developers (or a developer with AI augmentation) are producing artifacts that may conflict.

**Apply this understanding**:
1. Monitor the context graph for new nodes and edges
2. For each new decision, check for CONTRADICTS relationships with existing decisions
3. For each new observation, check consistency with observations in the same domain
4. For each modified document, check REQUIRES and DERIVES_FROM chains for impact

**Coherent detection**: Graph-based conflict detection that scales with graph density, not artifact count.

**Incoherent detection**: Manual review of all changes; exhaustive pairwise comparison; meeting-based sync.

### Pattern: Continuous Coherence Monitoring

**Recognise this situation**: The project is in phases 4-7 where formal artifacts dominate and consistency matters.

**Apply this understanding**:
1. The Orchestrator runs coherence queries on the context graph periodically
2. Queries check: decision consistency, observation freshness, assumption validity, coverage gaps
3. Findings below severity threshold are logged as observations
4. Findings above severity threshold are escalated through the Dialogue Agent

**Coherent monitoring**: Automated, continuous, severity-filtered, graph-based.

**Incoherent monitoring**: Periodic human reviews; manual checklists; post-hoc audits.

### Pattern: Scaling from Solo to Team

**Recognise this situation**: A solo developer with AI augmentation begins collaborating with others.

**Apply this understanding**:
1. Solo: coordination is between developer and AI (managed by Dialogue Agent)
2. Small team (2-3): coordination adds inter-developer consistency (Orchestrator monitors shared graph)
3. Larger team: coordination requires explicit domain boundaries and ownership tracking
4. The context graph grows to include actor-artifact edges showing who owns what

**Coherent scaling**: Same graph, same Orchestrator, increasing edge density and monitoring scope.

**Incoherent scaling**: Separate tools for team coordination; abandoning graph-based approach; manual coordination.

### Anti-Pattern: Assuming Coordination Solved at Assignment Time

| Anti-Pattern | Why It Fails | What to Do Instead |
|--------------|--------------|-------------------|
| **"Assign tasks clearly and coordination follows"** | AI augmentation creates emergent conflicts not visible at assignment time | Continuous monitoring during execution |
| **"Architecture prevents conflicts"** | Architecture drifts; new conflicts emerge from implementation details | Graph-based drift detection |
| **"Reviews catch everything"** | Volume overwhelms reviewers; reviews happen too late | Early, continuous, automated conflict detection |
| **"Same coordination as before AI"** | Production volume has changed; coordination load has changed | Scale coordination mechanisms with production |

---

## 4. Evolution Conditions

*What would change this understanding?*

### Core Assumptions

| Assumption | If Challenged | Response |
|------------|---------------|----------|
| **AI augmentation increases production linearly** | AI augmentation is sub-linear or bounded | Coordination pressure reduces; model still applies at scale |
| **Coordination scales super-linearly with output** | Better coordination mechanisms emerge | Adopt; graph-based approach may become one tool among many |
| **Graph-based coordination is sufficient** | Graph queries miss important conflicts | Add semantic analysis; augment structural with AI-based coherence checking |
| **Agents can coordinate autonomously** | Autonomous coordination proves reliable | Reduce escalation; increase automated resolution |

### Temporal Qualification

This theory addresses team coordination as of 2024-2025, where:
- AI augmentation significantly increases individual output
- Coordination mechanisms are largely manual or meeting-based
- Graph-based coordination monitoring is novel
- Team sizes for AI-augmented projects are typically small (2-5)

Future developments (AI-to-AI coordination, formal verification of consistency, larger augmented teams) would refine the scaling model but not invalidate the core insight that coordination must scale sub-linearly with production.

---

## Document Relationships

| Document | Relationship to THY-007 |
|----------|------------------------|
| [THY-005](./theory_two-agent-architecture.md) | Parent: Orchestrator is the coordination agent |
| [THY-006](./theory_context-graph-substrate.md) | Parent: graph is the coordination substrate |
| [F-2 Transactive Memory](../concepts/foundation_transactive-memory.md) | Referenced: TMS as coordination mechanism |
| [F-3 STS Theory](../concepts/foundation_socio-technical-systems.md) | Referenced: joint optimisation of social and technical |
| [C-8 Work Coordination](../concepts/concept_work-coordination.md) | Referenced: coordination patterns being extended |

---

## Validation Status

- ✓ **Problem mapping**: Coordination scaling paradox clearly identified
- ✓ **Design rationale**: Sub-linear scaling model and graph-based approach justified
- ✓ **Modification patterns**: Conflict detection and coherence monitoring patterns provided
- ⚠ **Empirical validation**: Theoretical; scaling properties not yet measured
- ⚠ **Completeness**: Additional coordination patterns will emerge from multi-agent practice

---

*This document captures the insight that AI augmentation creates a coordination scaling paradox: productivity gains are consumed by coordination overhead unless coordination scales sub-linearly. The Process Orchestrator using the context graph provides this sub-linear scaling through continuous, automated, graph-based coherence monitoring.*

---

**Document History**:
- v1 (6 February 2026): Initial draft capturing coordination scaling in AI-augmented teams
