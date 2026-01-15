---
name: init-dialogue
description: Initialise the Dialogue Framework for this project. Creates .dialogue/ directory structure and config.yaml.
---

# Initialise Dialogue Framework

Set up the Dialogue Framework for first use in this project.

## Steps

1. **Check for existing initialisation**

   Check if `.dialogue/` directory exists in the project root.

   - If it exists AND contains `config.yaml`: inform the user the framework is already initialised and ask if they want to reinitialise (this will overwrite config.yaml)
   - If it exists but is empty or missing config.yaml: proceed with initialisation
   - If it doesn't exist: proceed with initialisation

2. **Create directory structure**

   Create the following directories:
   ```
   .dialogue/
   └── logs/
   ```

3. **Create config.yaml**

   Create `.dialogue/config.yaml` with this default content:

   ```yaml
   version: "0.1"

   # Project document locations (adjust paths to match your project)
   artifacts:
     adr:
       directory: "docs/decisions"
       pattern: "ADR-*.md"

   # Log locations
   logs:
     decisions: "file://${CLAUDE_PROJECT_DIR}/.dialogue/logs/decisions.yaml"
     observations: "file://${CLAUDE_PROJECT_DIR}/.dialogue/logs/observations.yaml"
   ```

4. **Create empty log files**

   Create empty log files with headers:

   `.dialogue/logs/decisions.yaml`:
   ```yaml
   # Decision log - managed by Dialogue Framework
   # Do not edit manually
   decisions: []
   ```

   `.dialogue/logs/observations.yaml`:
   ```yaml
   # Observation log - managed by Dialogue Framework
   # Do not edit manually
   observations: []
   ```

5. **Confirm completion**

   Tell the user:
   - Dialogue Framework has been initialised
   - They can customise `.dialogue/config.yaml` to match their project structure
   - The framework will now track decisions and observations in `.dialogue/logs/`
