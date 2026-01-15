---
name: dialogue-manage-tasks
description: Manage persistent tasks in .dialogue/tasks.yaml. Provides guidance for direct YAML editing—no scripts required. Triggers on "create task", "new task", "update task", "manage tasks", "track tasks".
---

# Skill: Manage Tasks

Manage persistent tasks in `.dialogue/tasks.yaml`. This skill provides guidance for direct YAML editing—no scripts required.

## Schema

See [schema.md](./schema.md) for the complete task schema definition.

## When to Use

- Creating new tasks
- Updating task status
- Listing or filtering tasks
- Archiving completed items
- Adding notes to existing items

## When NOT to Use

- Session-level task tracking → use TodoWrite tool directly
- One-off tasks that don't need cross-session persistence

## Approach

Task management is an **editing problem**, not a scripting problem:

1. Read `${CLAUDE_PROJECT_DIR}/.dialogue/tasks.yaml`
2. Consult [schema.md](./schema.md) for field definitions
3. Edit using the Edit tool
4. Validate changes match schema

## Quick Reference

### Required Fields

| Field | Pattern | Example |
|-------|---------|---------|
| `id` | `[A-Z]{2,4}-[0-9]{3}` | `FW-006` |
| `title` | Non-empty string | `Work Item Management` |
| `status` | Enum | `READY` |
| `created` | ISO 8601 | `2026-01-14T17:30:00Z` |

### Status Values

`BACKLOG` → `READY` → `IN_PROGRESS` → `COMPLETED`

Also: `BLOCKED`, `CANCELLED`

### Standard Prefixes

| Prefix | Purpose |
|--------|---------|
| `SH` | Self-Hosting |
| `CD` | Conceptual Debt |
| `FW` | Framework |
| `DOC` | Documentation |
| `VAL` | Validation |

## Operations

### Create New Work Item

1. Find highest existing ID for prefix (e.g., FW-006)
2. Use next number (FW-007)
3. Set `status: BACKLOG` or `READY`
4. Set `created` to current timestamp
5. Update `last_updated` at file top

### Update Status

1. Change `status` field
2. Update `updated` timestamp
3. If completing: add `completed` timestamp
4. Append to `notes` with context

### Add Notes

```yaml
notes: |
  Previous notes...

  Progress 14 January 2026:
  - What was done
  - What was decided
```

## Relationship to TodoWrite

| Aspect | TodoWrite | Work Items File |
|--------|-----------|-----------------|
| Scope | Session | Cross-session |
| Granularity | Tasks | Tasks |
| Use case | "Do X, Y, Z" | "FW-006 tracks this feature" |

## TMS Alignment

Tasks externalise directory knowledge, allocation, and history—enabling AI to "rejoin" ongoing work across sessions.
