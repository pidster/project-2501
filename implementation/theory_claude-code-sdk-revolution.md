---
id: THY-004
type: THY
title: Claude Code SDK for Revolution Mode
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
  - id: FW-045
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
  - claude-code-sdk
  - revolution-mode
---

# THY-004: Claude Code SDK for Revolution Mode

## Purpose

This document captures emerging understanding about using the Claude Code SDK as an implementation approach for `claude-plugin-rev` (Revolution mode) — the production-ready, simplified flavour of the Dialogue Framework.

**Status**: Initial concept capture. Requires research (FW-045) to validate feasibility and approach.

---

## 1. Core Hypothesis

The Claude Code SDK (also known as Claude Agent SDK) provides programmatic access to build custom agents using Claude's capabilities. This could enable:

- **Standalone execution**: Framework delivered as a self-contained agent rather than a plugin
- **Custom tool integration**: Tighter control over tool definitions and behaviours
- **Deployment flexibility**: Alternative distribution model beyond plugin installation
- **Orchestration patterns**: Multi-agent workflows native to the SDK

## 2. Relationship to Plugin Architecture

Revolution mode (`claude-plugin-rev`) currently packages the Dialogue Framework as a Claude Code plugin. The SDK approach would represent an **alternative packaging** rather than a replacement:

| Aspect | Plugin Approach | SDK Approach |
|--------|-----------------|--------------|
| Installation | Plugin directory | npm/CLI installation |
| Execution context | Within Claude Code | Standalone or embedded |
| Tool access | Plugin tools | SDK tool definitions |
| User experience | Conversation-based | Potentially programmatic |

## 3. Open Questions

These questions require research to resolve:

1. **Capability parity**: Can SDK-based agents achieve the same capabilities as plugin-based delivery?
2. **Distribution model**: How would users install and update an SDK-based framework?
3. **Context management**: How does the SDK handle conversation context and memory?
4. **Tool ecosystem**: Can SDK agents access the same tool ecosystem as plugins?
5. **Hybrid approach**: Could SDK and plugin approaches coexist or complement each other?

## 4. Invalidation Conditions

This theory would be invalidated if:

- The Claude Code SDK does not support the tool patterns required by the framework
- SDK-based delivery provides no meaningful advantages over plugin packaging
- The SDK's execution model is incompatible with Dialogue Framework's conversational patterns

---

## Related

- **FW-045**: Research task for Claude Code SDK investigation
- **FW-044**: MCP as alternative packaging approach (parallel investigation)
