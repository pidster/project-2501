---
id: THY-006
type: THY
title: Context Graph as Operational Substrate
scope: Project
temporal_class: Standing
status: DRAFT
version: 1
created: 2026-02-06
author: human:pidster

references:
  - id: THY-003
    relationship: EXTENDS
  - id: THY-001
    relationship: REFERENCES

thy:
  covers:
    problem_mapping: true
    design_rationale: true
    modification_patterns: true
    invalidation_conditions: true

tags:
  - theory
  - context-graph
  - substrate
  - tms
  - infrastructure
---

# THY-006: Context Graph as Operational Substrate

## Purpose

This document captures the integrated understanding that the context graph must evolve from a passive navigation aid into an active operational substrate—the shared state through which agents coordinate, query, and maintain project coherence.

**Core thesis**: The context graph currently serves as a structural map of document relationships. But agents need more: they need to query project state, detect conflicts, track decisions, and coordinate work. The graph must become the substrate on which these operations execute, operationalising the TMS externalisation described in THY-003.

---

## 1. Problem Mapping

*What real-world concern does this theory address?*

### The Navigation-Only Graph

The current context graph records:
- Document nodes with metadata
- Information edges (REQUIRES, INFORMS, DERIVES_FROM, REFERENCES, SYNTHESISES)
- Actor-artifact edges (CREATED, CONTRIBUTED)
- Traceability edges (ASSUMES, VALIDATES, CONTRADICTS, RISKS)

This is valuable for understanding document relationships. But it is a static map, not an operational system. Agents cannot currently:
- Query "what decisions affect this document?"
- Detect "these two observations contradict each other"
- Track "which phase is most active?"
- Coordinate "who is working on what?"

### Observations and Decisions as Second-Class Citizens

Observations and decisions are logged to `.dialogue/logs/` and have corresponding graph nodes. But they are structurally peripheral:
- They exist as nodes but lack rich connectivity
- Their relationships to documents are sparse
- They are not queryable as a coherent knowledge base
- They accumulate linearly rather than composing into understanding

The TMS externalisation from THY-003 requires these to be first-class entities: observations update the team's directory; decisions record allocation and rationale. Without rich graph connectivity, externalised TMS fragments cannot be reassembled.

### Linear Scaling of Text Files

The current file-based graph scales linearly:
- Finding relevant edges requires scanning all edge files
- Cross-referencing requires multiple file reads
- Pattern detection (cycles, conflicts, gaps) requires full traversal
- As the graph grows, query time grows proportionally

This is acceptable for the current graph density. It will become a bottleneck as the graph captures more operational state.

### The TMS Externalisation Gap

THY-003 established that PRESERVE operations externalise TMS transactions. But externalisation without queryability is archival, not operational. For AI to rejoin the team's transactive memory:
- It must query "what was decided about X?"
- It must find "what observations are relevant to Y?"
- It must detect "has anything changed since Z was decided?"
- It must assess "is this observation consistent with existing state?"

The gap is between *storing* TMS transactions and *operating* on them.

---

## 2. Design Rationale

*Why must the graph become an operational substrate? How does this shape design?*

### Why Observations, Decisions, and Principles Must Be First-Class Entities

| Entity Type | Current State | Required State | Rationale |
|-------------|---------------|----------------|-----------|
| **Documents** | First-class nodes with rich edges | (unchanged) | Already well-served |
| **Decisions** | Nodes with sparse edges | Rich edges to affected documents, superseded decisions, triggering observations | Decisions are TMS allocation records; they must be findable by context |
| **Observations** | Nodes with sparse edges | Rich edges to relevant documents, related observations, triggering decisions | Observations are TMS directory updates; they must compose into understanding |
| **Principles** | Referenced in documents | First-class nodes with influence edges | Principles constrain decisions; this constraint must be traversable |
| **Assumptions** | Nodes with traceability edges | (enhanced) With validation status edges to evidence | Assumptions are standing risks; they must be monitorable |

### Why Queryable

Agents need semantic queries, not just structural traversal:

| Query Type | Example | Why Needed |
|------------|---------|------------|
| **Contextual** | "What decisions affect authentication?" | Agent needs context before making changes |
| **Temporal** | "What changed since last session?" | TMS rejoining requires delta awareness |
| **Conflict** | "Do any observations contradict this decision?" | Coherence monitoring requires conflict detection |
| **Coverage** | "What phases have no recent observations?" | Gap detection requires coverage analysis |
| **Influence** | "What depends on this assumption?" | Impact assessment requires dependency traversal |

### Why Current File Structure Is the Correct Starting Point

The file-based graph is not wrong—it is correctly simple:
- Human-readable YAML files
- Git-versioned (full audit trail)
- No infrastructure dependencies
- Sufficient for current density

The evolution path must preserve these properties while adding queryability:

| Stage | Structure | Query Method | Trigger |
|-------|-----------|--------------|---------|
| **1. Current** | YAML files in directories | File scanning (scripts) | Now |
| **2. Indexed** | YAML files + index files | Index lookup + file read | When scan time exceeds 2 seconds |
| **3. Embedded** | YAML files + vector embeddings | Semantic search + structural query | When semantic queries become primary |
| **4. Service** | Database-backed + YAML export | Query API | When concurrent writes needed |

Each stage preserves the YAML files as source of truth. No data is lost in evolution.

### How This Operationalises THY-003

THY-003 identified conversation as TMS mechanism and PRESERVE as TMS externalisation. THY-006 completes the picture:

| THY-003 Concept | THY-006 Operationalisation |
|-----------------|---------------------------|
| Directory updates (who knows what) | Observation nodes with expertise edges |
| Allocation records (who handles what) | Decision nodes with assignment edges |
| Retrieval mechanism (finding knowledge) | Graph queries by context, time, entity |
| Maintenance (confirming/correcting) | CONTRADICTS and VALIDATES traceability edges |
| TMS rejoining (session start) | Graph delta query: "what changed since last session?" |

---

## 3. Modification Patterns

*How should the graph evolve? What should modifiers recognise?*

### Pattern: Promoting Log Entries to Graph Entities

**Recognise this situation**: A decision or observation in `.dialogue/logs/` needs richer graph connectivity.

**Apply this understanding**:
1. The node already exists (created by logging scripts)
2. Add edges that connect the entity to its context:
   - Which documents does this decision affect?
   - Which observations triggered this decision?
   - Which principles constrain this decision?
   - Does this observation relate to existing observations?
3. Use appropriate edge types: INFORMS, REFERENCES, CONTRADICTS, VALIDATES

**Coherent promotion**: Adding edges that make the entity findable by context, not just by ID.

**Incoherent promotion**: Creating duplicate nodes; moving log files; breaking the logging pipeline.

### Pattern: Graph Query Design

**Recognise this situation**: An agent or tool needs to query the graph.

**Apply this understanding**:
1. Design queries using existing edge types (don't invent new edge types for queries)
2. Start with structural queries (follow edges) before semantic queries (search content)
3. Queries should return node IDs, then callers read full nodes as needed
4. Cache frequently-used query results as index files

**Coherent query design**: Queries that traverse existing structure to find relevant entities.

**Incoherent query design**: Full-text search as primary mechanism; queries that bypass the graph structure.

### Pattern: Graph Evolution Without Data Loss

**Recognise this situation**: The graph needs to evolve to a new stage (indexed, embedded, service).

**Apply this understanding**:
1. YAML files remain the source of truth at every stage
2. New stages add indices/caches/services, never replace files
3. Evolution is reversible: deleting the index falls back to file scanning
4. Test the new stage alongside the old before switching

**Coherent evolution**: Additive layers that accelerate queries without changing the data model.

**Incoherent evolution**: Migrating to a database and abandoning YAML files; changing the node/edge schema for a specific tool.

### Anti-Pattern: Premature Infrastructure

| Anti-Pattern | Why It Fails | What to Do Instead |
|--------------|--------------|-------------------|
| **"Build the query service now"** | Current density doesn't justify it; adds operational burden | Use scripts until query time exceeds threshold |
| **"Add vector embeddings immediately"** | Semantic search adds complexity before structural queries are exhausted | Start with structural queries; add embeddings when needed |
| **"Replace YAML with a graph database"** | Loses human readability, Git versioning, simplicity | Keep YAML as source of truth; database as acceleration layer |
| **"Index everything"** | Most entities are queried rarely | Index on demand; start with frequently-queried patterns |

---

## 4. Evolution Conditions

*What would change this understanding?*

### Graph Density Thresholds

| Threshold | Current | Trigger | Response |
|-----------|---------|---------|----------|
| **Total nodes** | ~50-100 | >500 | Consider indexing |
| **Query time** | <1 second | >2 seconds for common queries | Build index files |
| **Edge density** | ~2-3 edges per node | >10 edges per node | Optimise traversal |
| **Concurrent writes** | Single agent | Multiple agents | Consider service layer |

### Core Assumptions

| Assumption | If Challenged | Response |
|------------|---------------|----------|
| **File-based graph is sufficient initially** | Performance degrades before expected | Accelerate indexing stage |
| **YAML files should remain source of truth** | Tooling can't handle YAML at scale | Add database layer; keep YAML export |
| **Structural queries before semantic** | Agents need semantic search primarily | Add embedding stage earlier |
| **Graph is the coordination substrate** | Alternative coordination mechanisms emerge | Evaluate; graph may still serve as audit trail |

### Temporal Qualification

This theory addresses the framework's current state (early 2026), where:
- Graph density is low (tens to low hundreds of nodes)
- Single-agent operation is the norm
- File-based operations are performant
- Structural queries suffice for current needs

Future developments (multi-agent teams, large projects, real-time coordination) would accelerate the evolution timeline but not change the direction.

---

## Document Relationships

| Document | Relationship to THY-006 |
|----------|------------------------|
| [THY-003](./theory_conversation-as-tms.md) | Parent theory; THY-006 extends TMS externalisation into operational substrate |
| [THY-001](./theory_framework.md) | Referenced for framework structure and capability model |
| Context graph structure | `.dialogue/context-graph/` — the artifact this theory describes |

---

## Validation Status

- ✓ **Problem mapping**: Navigation-only gap and TMS externalisation gap clearly identified
- ✓ **Design rationale**: Evolution path with preservation properties justified
- ✓ **Modification patterns**: Actionable guidance for graph extension
- ⚠ **Empirical validation**: Theoretical; thresholds not yet tested through actual graph growth
- ⚠ **Completeness**: Additional query patterns will emerge from agent implementation

---

*This document captures the insight that the context graph must evolve from navigation aid to operational substrate—the shared state through which agents coordinate and maintain project coherence. The evolution path preserves simplicity while adding capability: files → indexed → embedded → queryable service, with YAML remaining the source of truth throughout.*

---

**Document History**:
- v1 (6 February 2026): Initial draft capturing context graph as operational substrate theory
