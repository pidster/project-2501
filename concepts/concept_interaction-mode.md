# Key Reference Concept: Interaction Mode

## Definition

Interaction Mode controls how the AI communicates with the human operator during a session. It governs help verbosity, proactivity level, and guidance style—independently of which collaboration pattern is active for the current work. Where collaboration patterns (Human-Led, Partnership, AI-Led) determine *who leads the work*, interaction mode determines *how the AI presents information and offers assistance* during that work.

This separation is essential: a user may prefer concise, on-demand help (human-led interaction) while executing AI-Led code generation, or verbose explanations (ai-led interaction) while performing Human-Led strategic planning. The two dimensions are orthogonal.

## The Three Interaction Modes

| Mode | Help Style | Session Start | Skill Activation | When Appropriate |
|------|------------|---------------|------------------|------------------|
| **human-led** | Concise, on-demand | Status only | Waits for explicit triggers | Experienced users, focused work, minimal interruption desired |
| **partnership** | Balanced, suggests | Status + hints | Activates on clear signals | Default for most users, general work sessions |
| **ai-led** | Verbose, proactive | Status + recommendations | Proactively activates, explains | New users, exploration, learning the framework |

### human-led Interaction Mode

The AI provides information only when explicitly requested. Session startup shows minimal status. Help responses are direct and concise. The AI does not offer unsolicited suggestions or explain what it's doing unless asked.

**Characteristics**:
- Session start: "Dialogue active. Tasks: 2 in-progress, 4 ready"
- Help responses answer the question directly without elaboration
- No proactive suggestions or "would you like me to..."
- Trust the user knows what they want

**Best for**: Experienced users who know the framework, focused deep work sessions, users who find proactive assistance distracting.

### partnership Interaction Mode (Default)

The AI provides balanced assistance with contextual suggestions. Session startup shows status with a brief hint. Help responses include relevant context and suggest next steps. The AI activates skills when triggers are clear but doesn't over-explain.

**Characteristics**:
- Session start: Status + "Type /help skills to see available capabilities"
- Help responses include context and offer follow-up options
- Suggests but doesn't push
- Explains new features once or twice, then goes quiet

**Best for**: General use, most work sessions, users comfortable with the framework but appreciating occasional guidance.

### ai-led Interaction Mode

The AI provides comprehensive assistance proactively. Session startup includes recommendations for what to work on. Help responses are thorough with examples. The AI explains what it's doing when using framework features, especially for first-time encounters.

**Characteristics**:
- Session start: Status + "Suggestion: Consider starting with FW-035"
- Help responses include examples and demonstrations
- Proactively offers related capabilities
- Explains framework actions: "I'm logging this as a decision (DEC-...)..."

**Best for**: New users learning the framework, exploration sessions, users who want AI to surface possibilities.

## Configuration and Precedence

Interaction mode is determined by (in order of precedence):

1. **User preference** (highest): Stored in `.dialogue/session-memo-{username}.yaml` as `interaction_mode_preference`
2. **Project config**: Set in `.dialogue/config.yaml` as `interaction_mode`
3. **Default**: `partnership` if neither is specified

This precedence allows:
- Individual users to have their preferred mode regardless of project setting
- Projects to establish a default appropriate for their context
- Sensible behaviour without any configuration

### Setting Interaction Mode

**Project-wide**: Edit `.dialogue/config.yaml`:
```yaml
interaction_mode: partnership  # human-led | partnership | ai-led
```

**Per-user preference**: Use `/set-mode` command or edit session memo:
```yaml
# In .dialogue/session-memo-{username}.yaml
interaction_mode_preference: ai-led
```

**Mid-session**: `/set-mode human-led` updates session memo immediately.

## Relationship to Collaboration Patterns

Interaction mode is **orthogonal** to collaboration patterns:

| Dimension | Controls | Examples |
|-----------|----------|----------|
| **Collaboration Pattern** | Who leads the work (capability execution) | Human-Led requirements elicitation, AI-Led code generation |
| **Interaction Mode** | How AI communicates (help, guidance, proactivity) | Concise help, verbose explanations |

A single session might involve:
- **human-led interaction** + **AI-Led collaboration**: User wants minimal chatter while AI generates code
- **ai-led interaction** + **Human-Led collaboration**: User wants thorough explanations while leading strategic planning
- **partnership interaction** + **Partnership collaboration**: Balanced work with balanced communication

The framework conflated these historically, treating "Human-Led" as both a collaboration pattern and an interaction style. Separating them enables more appropriate behaviour.

## Teach-by-Doing: First-Use Explanations

In **ai-led** mode (and to a lesser extent **partnership**), the framework explains its actions when features are first used:

**First decision log**:
> "I'm logging this as a decision (DEC-...). The framework captures decisions automatically when you say things like 'I decided...' or 'let's go with...'. You can also ask me explicitly to log a decision."

**First observation**:
> "I'm recording this as an observation (OBS-...). Observations capture facts, measurements, and states. I'll do this automatically when relevant."

After 2-3 uses, explanations stop—the user has learned. This is tracked in session-memo:

```yaml
feature_explanations_given:
  decision_logging: 2      # Explained twice, stop now
  observation_logging: 1   # One more explanation
  task_management: 0       # Not yet explained
```

If the user asks "what did you just do?", reset the counter and explain again.

## Key Implications

**For framework adoption**: New users should start with ai-led interaction to learn capabilities through use. As they become comfortable, they naturally shift toward partnership or human-led.

**For experienced users**: Offering human-led mode respects that experienced users don't need explanations and find proactive assistance intrusive during focused work.

**For project teams**: A project might default to partnership but allow individuals to override. A learning-focused project might default to ai-led.

**For session continuity**: Storing preference in session-memo means users don't need to reconfigure each session—their preferred style persists.

**For skill activation**: Skills check interaction mode to calibrate their response verbosity. A skill activated in human-led mode responds concisely; the same skill in ai-led mode might offer additional context.

## Integration with Other Concepts

- **[Collaboration Patterns](./concept_collaboration-patterns.md)**: Orthogonal dimension; patterns control work execution, interaction mode controls communication style.
- **[Actor Model](./concept_actor-model.md)**: Interaction mode affects how the AI actor presents itself—more or less visible depending on mode.
- **[Decision and Observation Tracking](./concept_decision-observation-tracking.md)**: In ai-led mode, the framework explains when it logs decisions/observations; in human-led mode, it does so silently.
- **[Work Coordination](./concept_work-coordination.md)**: Session start messages adapt to interaction mode, affecting how work state is communicated.

## Validation Status

- ⚠ **Conceptual coherence**: The separation of interaction mode from collaboration pattern is theoretically sound but requires validation through user feedback
- ⚠ **Mode effectiveness**: Whether three modes provide sufficient granularity needs validation
- ⚠ **Default selection**: Whether partnership is the right default for most users needs empirical validation
- ⚠ **Teach-by-doing threshold**: Whether 2-3 explanations is the right number before going silent needs tuning

---

*Interaction Mode provides user control over AI communication style, separate from collaboration patterns that control work execution. This separation enables appropriate assistance regardless of who is leading the work, improving user experience across the experience spectrum from novice to expert.*
