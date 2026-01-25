---
id: THY-005
type: THY
title: GitHub Copilot CLI SDK for Dialogue Framework
scope: Project
temporal_class: Standing
status: DRAFT
version: 1
created: 2026-01-25
updated: 2026-01-25
author: human:pidster

references:
  - id: THY-001
    relationship: EXTENDS
  - id: FW-046
    relationship: TRACKED_BY

thy:
  covers:
    problem_mapping: false
    design_rationale: true
    modification_patterns: false
    invalidation_conditions: false

tags:
  - theory
  - packaging
  - github-copilot
  - copilot-cli-sdk
  - multi-platform
---

# THY-005: GitHub Copilot CLI SDK for Dialogue Framework

## Purpose

This document captures emerging understanding about creating a GitHub Copilot flavour of the Dialogue Framework using the Copilot CLI SDK — enabling the framework to operate across different AI coding assistants.

**Status**: Initial concept capture. Requires research (FW-046) to validate feasibility and approach.

---

## 1. Core Hypothesis

GitHub Copilot provides CLI extensions through its SDK, enabling custom commands and integrations. A Copilot-flavoured Dialogue Framework could:

- **Platform diversity**: Extend framework reach beyond Claude Code users
- **Ecosystem integration**: Leverage GitHub's development ecosystem
- **Comparative learning**: Inform framework design through multi-platform implementation
- **Broader adoption**: Lower barrier for teams already using Copilot

## 2. Framework Portability Considerations

The Dialogue Framework's core concepts (SDLC phases, collaboration patterns, decision logging) are model-agnostic. However, implementation details vary:

| Framework Component | Portability | Copilot Considerations |
|--------------------|-------------|------------------------|
| Document types | High | YAML/Markdown portable |
| Skill definitions | Medium | Different skill/command model |
| Hook system | Low | Copilot extension points differ |
| Context management | Medium | Different conversation model |
| Tool definitions | Low | Platform-specific tool APIs |

## 3. Potential Architecture

A Copilot Dialogue flavour might structure as:

```
copilot-dialogue/
  commands/         # Copilot CLI commands
  extensions/       # Copilot extension points
  shared/           # Portable framework logic
    schemas/        # Document schemas
    templates/      # Document templates
  .dialogue/        # Runtime artifacts (same structure)
```

## 4. Open Questions

These questions require research to resolve:

1. **SDK capabilities**: What extension points does the Copilot CLI SDK provide?
2. **Conversation model**: How does Copilot handle multi-turn conversations?
3. **Tool integration**: Can Copilot extensions define custom tools?
4. **State management**: How would framework state persist across Copilot sessions?
5. **Shared core**: What percentage of framework logic could be shared across flavours?

## 5. Invalidation Conditions

This theory would be invalidated if:

- The Copilot CLI SDK does not support the extension patterns required
- Copilot's conversation model is fundamentally incompatible with framework patterns
- The effort to maintain multiple flavours outweighs the adoption benefits

---

## Related

- **FW-046**: Research task for Copilot CLI SDK investigation
- **THY-004**: Claude Code SDK for Revolution mode (parallel approach)
- **FW-044**: MCP as alternative packaging approach
