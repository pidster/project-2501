# Dialogue Framework

This directory contains operational logs and configuration for the AI-Augmented SDLC dialogue framework.

## Structure

```
.dialogue/
├── logs/
│   ├── decisions/       # Decision records (per-file: DEC-YYYYMMDD-HHMMSS.yaml)
│   └── observations/    # Observation records (per-file: OBS-YYYYMMDD-HHMMSS.yaml)
├── tasks/               # Task records (per-file: XX-NNN.yaml)
└── README.md

# Scripts are located in their respective skill directories:
# claude-plugin-evo/skills/dialogue-log-decision/scripts/log-decision.sh
# claude-plugin-evo/skills/dialogue-log-observation/scripts/log-observation.sh
```

## Log Format

Logs use **per-file YAML structure** where each entry is stored as an individual file. This enables merge-friendly operation and avoids file locking issues.

### Decision Log Schema (v0.1)

File: `.dialogue/logs/decisions/DEC-YYYYMMDD-HHMMSS.yaml`

```yaml
id: DEC-20260113-143215           # Required: DEC-YYYYMMDD-HHMMSS
timestamp: "2026-01-13T14:32:15Z" # Required: ISO 8601 UTC
type: OPERATIONAL                 # Required: OPERATIONAL | TACTICAL
actor: "ai:claude"                # Required: ai:<model> | human:<id>
subject: "Brief description"      # Required: What the decision concerns
outcome: "Action taken"           # Required: What was decided/done
rationale: "Why this choice"      # Required: Single-line reasoning
context: "Surrounding situation"  # Optional: Additional context
tags: ["tag1", "tag2"]            # Optional: Categorisation
```

### Observation Log Schema (v0.1)

File: `.dialogue/logs/observations/OBS-YYYYMMDD-HHMMSS.yaml`

```yaml
id: OBS-20260113-143000           # Required: OBS-YYYYMMDD-HHMMSS
timestamp: "2026-01-13T14:30:00Z" # Required: ISO 8601 UTC
type: EVENT                       # Required: MEASUREMENT | STATE | EVENT
observer: "ai:claude"             # Required: ai:<model> | human:<id>
subject: "What was observed"      # Required: Brief description
value: "Observation content"      # Required: The observed data/state
context: "Surrounding situation"  # Optional: Additional context
tags: ["tag1", "tag2"]            # Optional: Categorisation
```

## Decision Types

| Type | Use For |
|------|---------|
| **OPERATIONAL** | Routine choices during task execution (e.g., "chose this fix over that fix") |
| **TACTICAL** | Choices affecting approach or method (e.g., "decided to refactor before adding feature") |

*Note: Architecture decisions should use ADRs, not this log.*

## Observation Types

| Type | Use For |
|------|---------|
| **MEASUREMENT** | Quantitative observations (e.g., "3 tests failed") |
| **STATE** | System/process state (e.g., "build is broken") |
| **EVENT** | Occurrences (e.g., "user requested code review") |

## Actor Format

Actors are identified as `type:identifier`:
- `ai:claude` — Claude AI assistant
- `ai:copilot` — GitHub Copilot
- `human:pidster` — Human user (username)

## Usage

Entries are created via bash scripts located in skill directories:
- `claude-plugin-evo/skills/dialogue-log-decision/scripts/log-decision.sh` — Creates a decision entry
- `claude-plugin-evo/skills/dialogue-log-observation/scripts/log-observation.sh` — Creates an observation entry

These scripts are wrapped by Agent Skills for use within Claude Code sessions.

---

*Part of the Dialogue Framework*
