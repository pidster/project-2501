# ADR-002: Hybrid Approach for Existing Artifact Treatment

Date: 2026-01-14
Status: Proposed
Actor: human:pidster

## Context

The framework self-hosting effort (SH-005, SH-006) created new artifacts with THY/REF/STR prefixes and document frontmatter. Existing documents in concepts/ lack these conventions. A decision is needed on whether to retrofit existing documents, create only new artifacts going forward, or use a hybrid approach.

## Decision

Use a hybrid approach: new documents use full conventions (THY/REF/STR prefixes, frontmatter); existing concept documents remain as-is but are referenced from new documents. Key integration documents (THY-001, REF-001) serve as bridges, cataloguing existing content without requiring immediate retrofit.

## Alternatives Considered

Option A - Full Retrofit: Update all existing documents with prefixes and frontmatter. Pros: Complete consistency, single convention. Cons: High effort, risk of breaking existing references, changes to well-established documents.||Option B - Forward Only: Only new documents use conventions; existing documents remain unchanged. Pros: No disruption to existing content. Cons: Permanent inconsistency, two parallel systems.||Option C - Hybrid (Selected): New documents use conventions; existing documents referenced via bridge documents. Pros: Incremental adoption, no immediate disruption, allows gradual migration. Cons: Temporary inconsistency, requires bridge documents.

## Consequences

THY-001 and REF-001 already reference existing concept documents. Existing documents remain stable and usable. Future retrofit can be done incrementally as documents are updated for other reasons. No breaking changes to existing workflows.

## Rationale

Hybrid approach balances consistency goals with practical constraints. The framework is under active development; forcing immediate retrofit would delay more valuable work. Bridge documents (THY-001, REF-001) provide the integration layer, making existing content discoverable through the new reference system. This aligns with the framework's own guidance on incremental improvement over big-bang changes.
