#!/bin/bash
# session-start-guided.sh — Guided variant: injects operating instructions
# Part of the Dialogue Framework plugin
# SessionStart hook - GUIDED APPROACH
#
# Difference from baseline: Includes directive operating instructions,
# not just status reporting.

set -euo pipefail

PROJECT_ROOT="${CLAUDE_PROJECT_DIR:?CLAUDE_PROJECT_DIR must be set}"

DIALOGUE_DIR="${PROJECT_ROOT}/.dialogue"
CONFIG_FILE="${DIALOGUE_DIR}/config.yaml"
TASKS_DIR="${DIALOGUE_DIR}/tasks"

# ANSI color codes
BOLD=$'\033[1m'
BOLD_GREEN=$'\033[1;32m'
BOLD_CYAN=$'\033[1;36m'
RED=$'\033[31m'
BLUE=$'\033[34m'
RESET=$'\033[0m'

# Check initialisation
if [[ ! -d "$DIALOGUE_DIR" ]] || [[ ! -f "$CONFIG_FILE" ]]; then
    # Not initialised - use minimal message, CLAUDE.md handles init guidance
    if [[ ! -d "$DIALOGUE_DIR" ]]; then
        echo "{\"continue\": true, \"systemMessage\": \"${BLUE}Dialogue Framework: NOT INITIALISED.${RESET} Use /init-dialogue to set up.\"}"
    else
        echo "{\"continue\": true, \"systemMessage\": \"${RED}Dialogue Framework: PARTIAL.${RESET} Missing config.yaml.\"}"
    fi
    exit 0
fi

# Count tasks
in_progress=0
ready=0
in_progress_list=""

## Scan task files for statuses
## TODO: should be done via a proper YAML parser as this is brittle?
## TODO: should this use the dialogue-manage-tasks skill instead?

if [[ -d "$TASKS_DIR" ]] && [[ -n "$(ls -A "$TASKS_DIR" 2>/dev/null)" ]]; then
    for task_file in "$TASKS_DIR"/*.yaml; do
        [[ -f "$task_file" ]] || continue
        status=$(grep -m1 "^status:" "$task_file" 2>/dev/null | awk '{print $2}' || echo "")
        if [[ "$status" == "IN_PROGRESS" ]]; then
            ((in_progress++))
            id=$(grep -m1 "^id:" "$task_file" | awk '{print $2}' | tr -d '"')
            [[ $in_progress -le 3 ]] && in_progress_list+="${id} "
        elif [[ "$status" == "READY" ]]; then
            ((ready++))
        fi
    done
fi

# Build GUIDED system message with operating instructions
# Key difference: explicit directives, not just status

read -r -d '' INSTRUCTIONS << EOF || true
${BOLD_GREEN}Dialogue Framework is active.${RESET}

OPERATING INSTRUCTIONS:
1. Log decisions: Use dialogue-log-decision skill when choices are made
2. Log observations: Use dialogue-log-observation skill for findings
3. Track work: Use dialogue-manage-tasks skill for persistent items
4. All other actions: Consult claude-plugin-evo/references/framework-manual.md
EOF

# Add task status
task_status="Tasks: ${BOLD}${in_progress} in-progress${RESET}"
if [[ -n "$in_progress_list" ]]; then
    task_status+=" [${BOLD_CYAN}${in_progress_list% }${RESET}]"
fi
task_status+=", ${BOLD}${ready}${RESET} ready"

# Combine instructions with status
system_msg="${INSTRUCTIONS}"$'\n\n'"${task_status}" 

# Escape for JSON (newlines to \n)
system_msg_escaped=$(echo "$system_msg" | jq -Rs '.')

echo "{\"continue\": true, \"systemMessage\": ${system_msg_escaped}}"
exit 0
