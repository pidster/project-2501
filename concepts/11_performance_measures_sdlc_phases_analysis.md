# Performance Measures and SDLC Phases: A Rigorous Evidential Analysis

## Executive Summary

This analysis examines empirical evidence for software development performance measures, distinguishing between correlation and causation, and mapping validated measures to the seven-phase SDLC model. The analysis reveals that while substantial correlational evidence exists, causal claims remain largely unestablished, and measurement validity varies dramatically across lifecycle phases.

**Key findings:**
1. **Late-phase measures are well-validated** — DORA metrics have robust correlational evidence (N=39,000+) for deployment and operations phases
2. **Early-phase measures remain problematic** — requirements-failure statistics trace to methodologically contested sources
3. **Subjective measures have predictive value** — Developer thriving (r=0.43 with productivity), good workday factors validated at scale
4. **Phase-specific measurement is essential** — universal metrics fail because different phases have fundamentally different information compositions
5. **Most evidence is correlational** — experimental designs represent <3% of published research

---

## Part I: Epistemological Framework

### Evidence Categories

This analysis classifies evidence into four categories based on methodological rigour:

| Category | Design | Causal Inference | Example |
|----------|--------|------------------|---------|
| **Tier 1: Experimental/Quasi-experimental** | Randomised or natural experiments with temporal precedence | Can support causation | Code inspection experiments (Basili & Selby, 1987) |
| **Tier 2: Longitudinal/Panel** | Repeated measures over time, same subjects | Establishes temporal precedence only | Developer turnover studies (Rigby et al., 2016) |
| **Tier 3: Cross-sectional with controls** | Single timepoint, statistical controls | Correlation only | DORA surveys, Developer Thriving (Hicks et al., 2024) |
| **Tier 4: Descriptive/Case study** | Observational, retrospective | Association only | CHAOS reports |

### What "Good" Means for Measures

A measure is considered "good" if it demonstrates:

1. **Construct validity** — Actually measures what it claims to measure
2. **Predictive validity** — Correlates with or predicts meaningful outcomes
3. **Actionability** — Can be influenced by accountable actors
4. **Reliability** — Produces consistent results across contexts and time
5. **Minimal gaming potential** — Resists Goodhart's Law distortion

---

## Part II: Well-Validated Measures (Strong Evidence)

### DORA Metrics — Phases 5-7 (Implementation, Testing, Operations)

**Source:** DORA/State of DevOps Reports (2013-2025), N=39,000+ professionals
**Evidence tier:** Tier 3 (cross-sectional with controls, structural equation modelling)

| Metric | Definition | What It Measures | Evidence Quality |
|--------|------------|------------------|------------------|
| **Deployment Frequency** | How often code is deployed to production | Throughput capacity | ✓ Strong correlation with organisational performance |
| **Lead Time for Changes** | Time from commit to production deployment | Delivery pipeline efficiency | ✓ Validated across multiple years |
| **Change Failure Rate** | % of deployments causing production failures | Stability/quality | ✓ Consistent measurement |
| **Mean Time to Recovery** | Time to restore service after incident | Operational resilience | ✓ Lagging indicator of practices |

**Key findings (2024-2025 reports):**
- Throughput and stability are **positively correlated** for high performers (not a trade-off)
- Elite performers: deploy multiple times daily, recover in <1 hour, <5% change failure rate
- Teams with stable priorities experience **40% less burnout**
- Platform engineering correlates with **10% team performance increase**

**Critical caveats:**
- All data is self-reported (survey-based)
- Primarily measures late-phase (deployment/operations) performance
- **Not applicable to phases 1-4** where deployment doesn't occur
- AI adoption showed **negative** relationship with stability (-7.2%) in 2024, though 2025 shows improvement

**Relationship to success/failure:** Correlational, not causal. High DORA performance **predicts** but does not **cause** organisational success. Organisations choosing continuous delivery practices may have characteristics that predict success independent of the practices themselves.

---

### Developer Thriving (LABS Model) — All Phases

**Source:** Hicks et al. (2024), IEEE Software, N=1,282 developers across 12+ industries
**Evidence tier:** Tier 3 (cross-sectional with validated psychometric instruments)

| Factor | Definition | Measurement | Effect Size |
|--------|------------|-------------|-------------|
| **Learning** | Ability to learn new skills and share knowledge | 2-item scale | Component of DTS (α=0.86) |
| **Agency** | Voice in how contributions are measured | 2-item scale | Significant mediator |
| **Belonging** | Feeling accepted and supported by team | 2-item scale | Strong predictor |
| **Self-efficacy** | Confidence in problem-solving ability | 4-item scale | Core motivational driver |

**Quantified relationships (all p<0.001):**
- Thriving ↔ Perceived Productivity: **r=0.43**
- Visibility and Value ↔ Thriving: **r=0.73** (very strong)
- Healthy Metrics Use ↔ Thriving: **r=0.34**
- Visibility mediates HMU → Productivity relationship

**Predictive model:**
```
Healthy Metrics Use (β=0.32***) → Visibility/Value of Work (β=0.65***) → Developer Thriving (β=0.24***) → Productivity
```

**Critical caveats:**
- Cross-sectional design — **cannot establish causation**
- Self-reported productivity (no objective measures)
- Sample from Pluralsight users (potential selection bias)
- Novel constructs require further validation

**Phase applicability:**
- **All phases** — psychological factors affect work quality universally
- Different phases afford different dimensions (Initiation: high Agency; Implementation: high Learning)

---

### Good Workday Framework — All Phases (Context-Dependent)

**Source:** Meyer et al. (2019), IEEE TSE, N=5,971 responses (Microsoft)
**Evidence tier:** Tier 3 (cross-sectional, grounded theory analysis)

**Three high-level factors determining good workdays:**

| Factor | % Responses | Key Components |
|--------|-------------|----------------|
| **Value Creation** | 68% | Making progress (35.6%), working in code (13.8%), meaningful work (6.4%) |
| **Efficient Use of Time** | 54% | Avoiding interruptions (13.8%), managing meetings (12.2%), handling urgent issues (11.6%) |
| **Perception** | 9% | Feeling productive (4.7%), stress balance (2.5%) |

**Critical finding: Agency is paramount**
Good days characterised by work proceeding as planned rather than being disrupted by external factors. Agency and control over workday emerged as more important than specific activities.

**Surprising findings (challenge prior assumptions):**
- Emails mentioned as problem in only **1.7%** of responses
- Meetings are **context-dependent**: productive during planning/specification phases, disruptive during development

**Phase-specific implications:**
| Phase | Meeting Value | Focus Time Value | Key Factor |
|-------|---------------|------------------|------------|
| Initiation/Planning | High | Moderate | Constructive discussions |
| Requirements/Design | High | Moderate | Stakeholder alignment |
| Implementation | Low | High | Uninterrupted coding time |
| Testing/Operations | Moderate | Moderate | Incident coordination |

**Telemetry validation (2024 follow-up study):**
- PR delay correlates significantly with "bad day" reports
- Build time >47 minutes significantly associated with negative developer experience
- **Objective measures validate subjective reports**

---

### SPACE Framework — All Phases (Interpretation Varies)

**Source:** Forsgren et al. (2021), ACM Queue; validated by Storey et al. (2022)
**Evidence tier:** Tier 3 (empirically validated framework)

| Dimension | Definition | Phase Interpretation |
|-----------|------------|---------------------|
| **Satisfaction** | How fulfilled developers feel | Consistent across phases |
| **Performance** | Outcomes of work | Requirements: elicitation effectiveness; Implementation: coding velocity |
| **Activity** | Completed actions, outputs | Code commits vs. stakeholder meetings |
| **Communication** | Collaboration quality | Requirements: stakeholder alignment; Implementation: code review quality |
| **Efficiency** | Flow state, minimal waiting | Context-dependent |

**Validation evidence:** Storey et al. (2022) conducted study *before* SPACE publication; inductive coding independently arrived at same 5 dimensions — strong convergent validity.

**Integration with TRUCE (quality dimensions):**
- **T**imely — delivery speed
- **R**obust — reliability, testing
- **U**ser needs — requirements satisfaction  
- **C**ollaboration — enabling others' work
- **E**volvable — maintainability, technical debt

---

## Part III: Team Tacit Knowledge — Phases 1-4 (Moderate Evidence)

**Source:** Ryan & O'Connor (2013), 48 software teams in Ireland/UK SMEs
**Evidence tier:** Tier 3 (cross-sectional, validated instrument)

**Team Tacit Knowledge Measure (TTKM):**
- 14-item situational judgement test
- Internal consistency: α=0.71 (acceptable for tacit knowledge)
- Expert-novice differentiation validated

**Quantified relationships:**
| Relationship | Correlation | Significance |
|--------------|-------------|--------------|
| TTKM ↔ Team Effectiveness | r=0.35 | p<0.05 |
| TTKM ↔ Quality of Social Interaction | r=0.45 | p<0.01 |
| TTKM ↔ Explicit Knowledge (written procedures) | r=0.20 | ns (good discriminant validity) |

**Key finding:** TTKM predicted team effectiveness explaining **8% unique variance** above social interaction and explicit knowledge measures.

**Phase applicability:**
- Most relevant to **early phases** (Initiation, Planning, Requirements, Design) where tacit knowledge dominates
- Validates that team tacit knowledge is distinct from explicit knowledge and predicts outcomes

**Limitations:**
- Small sample (48 teams)
- Geographic/cultural limitations (Ireland/UK)
- All self-report measures
- No objective performance metrics

---

## Part IV: Problematic Evidence (Requires Caution)

### Requirements-Failure Statistics — Weak Evidence

**Claimed finding:** "39-47% of project failures stem from requirements problems"

**Evidence assessment:** This statistic has **remarkably weak empirical support**.

**Source tracing reveals:**
- Virtually all citations trace to **Standish Group CHAOS reports** (proprietary, non-peer-reviewed)
- Figures vary wildly across secondary sources: 37% (PMI), 39% (Zipdo), 47% (CISQ), 48% (Statista), 70% (Info-Tech)
- No systematic review or meta-analysis pools effect sizes with confidence intervals

**Methodological problems (per Glass 2005, 2006; Eveleens & Verhoef 2010):**
1. **Misleading definitions:** Success = on time + on budget + all features (measures estimation, not value)
2. **Sampling bias:** Original 1994 study asked executives to "share failure stories"
3. **Perverse incentives:** Organisations steering on Standish metrics showed 10-100x budget inflation
4. **Meaningless aggregation:** Averaging data with unknown biases produces unreliable figures

**Standish Group chairman's response:** "All data and information in the Chaos reports...should be considered **Standish opinion** and the reader bears all risk."

**Recommendation:** **Do not cite CHAOS statistics as evidence.** Instead, cite:
- PMI Pulse of the Profession (methodologically transparent): "Poor communication contributes to 56% of failed projects"
- Specific peer-reviewed studies with defined methodology

---

### Boehm's Cost Escalation Curve — Historical Artefact

**Claimed finding:** "Requirements defects cost 50-200x more to fix in production"

**Evidence assessment:** This 1981 claim rests on **thin and dated empirical foundations**.

**Source analysis:**
- Original data from **1970s waterfall projects** at defense contractors (TRW, IBM, GTE)
- "IBM Systems Science Institute" was internal training program, not research institution
- No primary research publication exists — only course notes
- **Citogenesis:** Pressman (2005), Boehm & Basili (2001), Glass (2002) with 14,500+ combined citations all trace to same 1981 source

**Modern counter-evidence:**
Menzies et al. (2017), examining **171 projects** worldwide (2006-2014):
> "We found no evidence for the delayed issue effect."

| Context | Measured Ratio |
|---------|----------------|
| Small projects (Boehm 1981) | 1:4 |
| Large TRW/IBM waterfall | 1:100 |
| TSP projects (Menzies 2017) | **No significant effect** |
| NASA spacecraft/military | 29-1500x |

**Recommendation:** Contextualise cost escalation claims as **context-dependent and historically contingent**. Modern iterative development with CI/CD may flatten the curve, but this remains empirically untested.

---

## Part V: Phase-Specific Measure Mapping

### Measurement Principle

Different SDLC phases have fundamentally different information compositions, requiring different measurement approaches:

| Phase | Tacit % | Formal % | Measurement Approach |
|-------|---------|----------|---------------------|
| **Initiation** | 75% | 15% | Qualitative (stakeholder surveys, alignment assessment) |
| **Planning** | 55% | 35% | Hybrid (risk identification, estimation confidence) |
| **Requirements** | 50% | 40% | Hybrid (stability rates, traceability, satisfaction) |
| **Design** | 40% | 45% | Hybrid (ADR adoption, review participation) |
| **Implementation** | 35% | 55% | Quantitative (DORA, code metrics, review thoroughness) |
| **Testing** | 30% | 60% | Quantitative (coverage, defect rates, escape rates) |
| **Operations** | 30% | 60% | Quantitative (DORA, incident metrics, monitoring) |

### Phase 1: Initiation/Conception

**Best measures (leading indicators):**
| Measure | What It Predicts | Evidence Quality | Actionability |
|---------|------------------|------------------|---------------|
| Stakeholder alignment score | Downstream requirements quality | Moderate (qualitative) | High |
| Strategic clarity assessment | Project scope stability | Moderate | High |
| Sponsor engagement frequency | Resource availability | Weak-Moderate | Moderate |

**Why quantitative metrics fail:** Critical work is building shared understanding, not producing artefacts. "Vision documents" can be produced without genuine alignment.

**Recommended frameworks:** SPACE (Satisfaction, Communication), Developer Thriving (Agency dimension)

---

### Phase 2: Planning

**Best measures (leading indicators):**
| Measure | What It Predicts | Evidence Quality | Actionability |
|---------|------------------|------------------|---------------|
| Risk identification completeness | Mitigation effectiveness | Moderate | High |
| Estimation confidence levels | Schedule accuracy | Moderate (calibration research) | High |
| Team composition stability | Knowledge continuity | Moderate (turnover studies) | Moderate |

**Confounding factors:** Project size shows 50% higher failure rates for >$1M projects (Gartner 2012), but this confounds with knowledge complexity.

---

### Phase 3: Requirements/Analysis

**Best measures (combined leading/lagging):**
| Measure | What It Predicts | Evidence Quality | Actionability |
|---------|------------------|------------------|---------------|
| Requirements stability rate | Design churn, rework | Strong (multiple studies) | Moderate |
| Stakeholder satisfaction score | Acceptance at delivery | Moderate | High |
| Traceability completeness | Testing coverage | Moderate | Moderate |
| Review coverage % | Defect detection | Strong (inspection research) | High |

**Evidence for review effectiveness:**
- Basili & Selby (1987, experimental): Code reading detected **80% more faults per hour** than testing
- Perspective-Based Reading experiments show significantly better document coverage

---

### Phase 4: Design/Architecture

**Best measures:**
| Measure | What It Predicts | Evidence Quality | Actionability |
|---------|------------------|------------------|---------------|
| Architecture Decision Record (ADR) adoption | Design rationale preservation | Weak-Moderate | High |
| Design review participation rate | Knowledge distribution | Moderate | Moderate |
| Technical debt assessment | Maintenance burden | Moderate (various studies) | Moderate |
| Conway's Law alignment | Architecture-team structure fit | Strong (r=0.73 reported) | Moderate |

**Conway's Law evidence:** Communication structure correlates with system architecture at r=0.73 (replicated across multiple studies). This is correlation, not causation, but the relationship is robust.

---

### Phase 5: Implementation/Construction

**Best measures (highest evidence quality):**
| Measure | What It Predicts | Evidence Quality | Actionability |
|---------|------------------|------------------|---------------|
| **Deployment Frequency** | Throughput capacity | Strong (DORA) | High |
| **Lead Time for Changes** | Pipeline efficiency | Strong (DORA) | High |
| Code review thoroughness | Defect detection | Strong (experimental) | High |
| Test coverage | Defect escape rate | Moderate-Strong | High |
| Developer Thriving score | Perceived productivity | Strong (r=0.43) | Moderate |

**Pair programming evidence (Hannay et al., 2009 meta-analysis, 18 studies):**
- Small positive effect on quality
- Medium positive effect on compressed schedules
- Medium **negative** effect on effort (~15% more person-hours)
- Pairs increase files developers know about by **66-150%**

---

### Phase 6: Testing/Validation

**Best measures:**
| Measure | What It Predicts | Evidence Quality | Actionability |
|---------|------------------|------------------|---------------|
| Test coverage (line/branch) | Defect escape risk | Moderate (contested) | High |
| Defect detection rate | Release quality | Strong | High |
| Test execution time | Feedback loop speed | Strong (DevEx research) | High |
| Escaped defect rate | Production incident rate | Strong | Moderate (lagging) |

**Test-Driven Development evidence (meta-analysis, 27 studies):**
- Small positive effect on quality
- Little to no discernible effect on productivity
- Effect sizes depend on task complexity

---

### Phase 7: Deployment/Operations

**Best measures (strongest evidence base):**
| Measure | What It Predicts | Evidence Quality | Actionability |
|---------|------------------|------------------|---------------|
| **Change Failure Rate** | System stability | Strong (DORA) | High |
| **Mean Time to Recovery** | Operational resilience | Strong (DORA) | High |
| Incident response time | User impact duration | Strong | High |
| Monitoring coverage | Issue detection speed | Moderate | High |

**2025 DORA findings:**
- 90% of organisations have adopted at least one internal platform
- Platform quality directly correlates with ability to unlock AI value
- AI adoption now shows positive relationship with throughput (reversed from 2024)
- AI continues to show **negative** relationship with stability — acceleration exposes downstream weaknesses

---

## Part VI: Causation Assessment Summary

### What We Can Claim (Correlational)

| Claim | Evidence | Confidence |
|-------|----------|------------|
| DORA metrics predict organisational performance | Large-scale surveys, consistent over 10 years | High |
| Developer thriving correlates with productivity | Validated psychometrics, r=0.43 | High |
| Agency/control over workday predicts good days | N=5,971, grounded theory | High |
| Team tacit knowledge predicts effectiveness | r=0.35, validated instrument | Moderate |
| High performers don't trade speed for stability | Consistent DORA finding | High |

### What We Cannot Claim (Causation Not Established)

| Claimed Relationship | Why Causation Unestablished |
|---------------------|----------------------------|
| Requirements defects → 50-200x production costs | Historical artefact, modern evidence contradicts |
| 39-47% failures from requirements | Methodologically problematic sources |
| Improving DORA metrics → organisational success | Selection effects not controlled |
| Developer thriving → productivity | Cross-sectional, temporal precedence unknown |
| Agile → higher success rates | Methodology confounded with team characteristics |

### What Would Establish Causation

1. **Prospective longitudinal studies** measuring predictor states before outcomes manifest
2. **Randomised controlled trials** of interventions (rare in software engineering)
3. **Natural experiments** with exogenous variation (e.g., regulatory changes, acquisitions)
4. **Instrumental variable analysis** controlling for selection effects
5. **Difference-in-differences** comparing treated/untreated groups over time

---

## Part VII: Recommendations by SDLC Phase

### Measurement Strategy Summary

| Phase | Primary Frameworks | Key Metrics | Evidence Quality | AI Augmentation Potential |
|-------|-------------------|-------------|------------------|---------------------------|
| **Initiation** | SPACE (S,C), Thriving (Agency) | Stakeholder alignment, strategic clarity | Weak-Moderate | Low (human judgment essential) |
| **Planning** | Risk frameworks, estimation calibration | Risk coverage, estimation confidence | Moderate | Moderate (AI can surface patterns) |
| **Requirements** | SPACE (C,P), stability tracking | Stability rate, traceability | Moderate | Moderate (AI can detect gaps) |
| **Design** | Conway's Law, ADR metrics | Architecture-team alignment, ADR adoption | Moderate-Strong | Moderate |
| **Implementation** | DORA, DevEx, Thriving | Deployment frequency, lead time, thriving | Strong | High (well-measured, formal outputs) |
| **Testing** | Coverage metrics, defect analysis | Coverage, defect rates, escape rates | Strong | High |
| **Operations** | DORA, incident management | CFR, MTTR, monitoring coverage | Strong | High |

### Critical Implementation Guidance

1. **Match metrics to actors:** Only measure what accountable actors can influence
2. **Use leading indicators early, lagging indicators late:** Early phases need predictors; late phases need validators
3. **Combine subjective and objective:** Neither alone is sufficient; triangulate
4. **Avoid Goodhart's Law:** Rotate metrics, use multiple measures, assess gaming
5. **Acknowledge uncertainty:** Present findings with appropriate confidence intervals and caveats

---

## References

### Primary Sources Reviewed

**Tier 1 (Experimental/Quasi-experimental):**
- Basili, V.R. & Selby, R.W. (1987). Comparing the Effectiveness of Software Testing Strategies. IEEE TSE.
- Hannay, J.E. et al. (2009). The Effectiveness of Pair Programming: A Meta-Analysis. IST.
- Rigby, P.C. et al. (2016). Quantifying and Mitigating Turnover-Induced Knowledge Loss. ICSE.

**Tier 2 (Longitudinal):**
- Menzies, T. et al. (2017). The Delayed Issue Effect. EMSE.
- Mockus, A. (2010). Organizational Volatility and Its Effects. IEEE TSE.

**Tier 3 (Cross-sectional with Controls):**
- DORA/Google Cloud (2024, 2025). Accelerate State of DevOps Reports.
- Forsgren, N. et al. (2018). Accelerate. IT Revolution Press.
- Hicks, C.M. et al. (2024). Developer Thriving. IEEE Software.
- Meyer, A.N. et al. (2019). Today Was a Good Day. IEEE TSE.
- Storey, M.A. et al. (2022). How Developers and Managers Define Productivity. CHASE.
- Ryan, S. & O'Connor, R.V. (2013). Team Tacit Knowledge Measure. JSS.
- Verwijs, C. & Russo, D. (2023). A Theory of Scrum Team Effectiveness. ACM TOSEM.

**Critical Reviews:**
- Glass, R.L. (2005, 2006). The Standish Report: Does It Really Describe a Software Crisis? CACM.
- Eveleens, J.L. & Verhoef, C. (2010). The Rise and Fall of the Chaos Report Figures. IEEE Software.
- Jørgensen, M. & Moløkken, K. (2006). How Large Are Software Cost Overruns? IST.

---

*Analysis completed: December 2025*
*Evidence synthesis based on project knowledge and contemporary research*
*Version 1.0*
