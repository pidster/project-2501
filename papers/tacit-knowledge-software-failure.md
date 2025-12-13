# Tacit knowledge and software failure: causation remains unestablished

**The widely-cited statistics linking requirements knowledge deficits to project failure rest on surprisingly thin empirical foundations.** While correlational evidence consistently associates knowledge factors with project outcomes, the causal relationship remains essentially unproven by rigorous experimental standards. The literature is dominated by cross-sectional surveys and retrospective case studies, with true experimental or quasi-experimental designs representing less than 3% of published research. The frequently quoted failure statistics—that 60-70% of projects fail, or that requirements problems cause 39-47% of failures—trace to methodologically problematic sources whose authors now characterize their findings as "opinion."

## The causal evidence gap is substantial

The search for longitudinal studies, natural experiments, or controlled interventions establishing temporal precedence between tacit knowledge deficits and project failure reveals a significant methodological void. **No randomized controlled trials** were found specifically testing the causal impact of tacit knowledge deficits on project outcomes.

The strongest available evidence comes from natural experiments on developer turnover. Rigby et al. (2016) used historical simulation to show projects are susceptible to knowledge losses more than **3x larger** than expected, with "abandoned code" (authored by departed developers) preceding productivity decline. Mockus (2010) demonstrated through longitudinal repository analysis that team departures impact software quality, with timing of departures preceding defect increases. Massingham's (2017) three-year longitudinal study with knowledge management interventions found knowledge loss negatively impacts institutional productivity—though without a control group.

The literature breaks down approximately as follows: cross-sectional surveys dominate at **~45%**, followed by qualitative case studies at **~30%**, retrospective repository analyses at **~15%**, longitudinal/panel studies at **~7%**, and quasi-experimental designs at only **~2%**. This distribution severely limits causal inference. Most studies measure knowledge states and outcomes concurrently, failing to establish temporal precedence. The validated Team Tacit Knowledge Measure (TTKM) developed by Ryan and O'Connor enables measurement but has primarily been used in cross-sectional designs.

## The requirements-failure statistics lack rigorous foundations

The claim that "39-47% of project failures stem from requirements problems" has remarkably weak empirical support. Tracing citation chains reveals that virtually all statistics converge on a single source: the Standish Group CHAOS reports.

The original 1994 CHAOS study surveyed 365 IT executives representing 8,380 applications using mail-in confidential surveys. The methodology explicitly asked executives to **"share failure stories"**—a sampling approach that inherently biases toward failure narratives. "Incomplete requirements" and "lack of user involvement" were ranked as top factors, but these rankings emerged from subjective retrospective attribution rather than prospective measurement or objective criteria.

The figures circulating in secondary literature vary wildly: **37%** (PMI surveys), **39%** (Zipdo synthesis), **47%** (CISQ reports), **48%** (Statista developer surveys), and **70%** (Info-Tech Research). This heterogeneity reflects inconsistent definitions and methodological differences rather than genuine measurement variance. Critically, "requirements failure" lacks consistent operationalization—some studies include scope creep, others include stakeholder management failures, and few distinguish between requirements elicitation, specification, validation, and management problems.

No systematic review or meta-analysis was found that pools effect sizes across studies, provides confidence intervals for the requirements-failure relationship, or controls for study quality and publication bias. The causal chain assumed—poor requirements → development problems → project failure—involves circular reasoning: "incomplete requirements" may only be identified retrospectively *because* the project failed.

## Boehm's cost escalation curve is a historical artifact, not universal truth

Barry Boehm's (1981) claim that requirements defects cost **50-200x more** to fix in production than in the requirements phase has been treated as software engineering gospel despite resting on thin and dated empirical foundations. The original data came from **1970s waterfall projects** at defense contractors (TRW, IBM, GTE)—large government systems with formal change control processes fundamentally different from modern development environments.

Laurent Bossavit's investigation of the citation chain revealed "citogenesis": secondary sources including Pressman (2005), Boehm & Basili (2001), and Glass (2002)—with combined citations exceeding **14,500** on Google Scholar—all trace back to the same 1981 source. The oft-cited "IBM Systems Science Institute" was actually an internal corporate training program, not a research institution. No primary research publication exists; only course notes from potentially 1967-era projects.

The largest modern study directly challenging this curve comes from Menzies et al. (2017), examining **171 software projects** worldwide from 2006-2014. Their conclusion: **"We found no evidence for the delayed issue effect."** The effort to resolve issues in later phases was not consistently greater than when issues were resolved soon after introduction. They characterize the cost escalation claim as potentially "an historical relic that occurs intermittently only in certain kinds of projects."

Where escalation has been measured, ratios vary enormously by context:

| Context | Measured Ratio (Req → Production) |
|---------|----------------------------------|
| Small projects (Boehm 1981) | 1:4 |
| Large TRW/IBM waterfall | 1:100 |
| TSP projects (Menzies 2017) | No significant effect |
| NASA spacecraft/military | 29–1500x |

Kent Beck's claim that agile practices flatten the cost curve became widely accepted despite lacking empirical validation—he removed the discussion from the second edition of XP Explained because no studies supported it. The curve's applicability to modern iterative development with continuous integration and automated testing remains genuinely unknown.

## The CHAOS statistics should not be cited as evidence

The scholarly critiques of Standish Group CHAOS reports by Glass (2005, 2006) and Eveleens & Verhoef (2010) establish fundamental methodological problems that undermine the widely-cited failure statistics.

**Eveleens and Verhoef conducted an empirical replication** using 5,457 forecasts from 1,211 real-world projects totaling hundreds of millions of euros. Their conclusion: "The Standish figures didn't reflect the reality of the case studies at all." They identified four major problems:

First, **misleading definitions**: Standish defines success solely as completion on time, on budget, with all originally specified features—measuring estimation accuracy, not project value. Second, **one-sided measurement**: overruns are counted as "challenged" but underruns are ignored, creating asymmetric penalties. Third, **perverse incentives**: organizations steering on Standish metrics showed massively overestimated forecasts—project managers overstated budgets by 10-100x to ensure "success." Fourth, **meaningless aggregation**: averaging data with unknown organizational biases produces unreliable figures.

When confronted with these findings, Standish Chairman Jim Johnson responded that "all data and information in the Chaos reports...should be considered **Standish opinion** and the reader bears all risk in the use of this opinion."

Jørgensen and Moløkken (2006) found the 1994 CHAOS claim of **189% average cost overrun** inconsistent with peer-reviewed surveys from the same period showing approximately **30-34%** average overrun. The meaning of "189% cost overrun" was never defined—50% of secondary sources interpreted it as "189% cost overrun" while 40% interpreted it as "189% of original estimate" (89% overrun).

As Glass observed, if failure rates were truly 70%, the modern computing era would be impossible. The CHAOS statistics should be treated with extreme skepticism.

## Confounding variables complicate any causal inference

Even if correlations between knowledge deficits and project failure were robustly established, multiple confounding variables complicate causal attribution:

**Project size** shows strong confounding effects. Gartner (2012) found projects with budgets exceeding $1M are **50% more likely to fail** than projects under $350k. Standish CHAOS 2020 reports large projects succeed less than 10% of the time while smallest projects fail only 10% of the time. Project size correlates with both knowledge complexity requirements and failure rates.

**Methodology moderates the relationship substantially**. Standish reports agile projects are **3x more likely to succeed** than waterfall (42% vs 13% success rate). This effect may operate through tacit knowledge transfer mechanisms—agile facilitates knowledge sharing through iterative feedback, cross-functional teams, and face-to-face communication emphasis.

**Organizational maturity** significantly relates to project outcomes. Studies using structural equation modeling find project management maturity moderates the relationship between various factors and project success. Higher CMMI levels reduce dependence on individual tacit knowledge for success.

**Team experience** interacts with knowledge factors. Experienced teams are better at tacit knowledge transfer, potentially masking knowledge deficits that would cause failure in less experienced teams.

Studies rarely control for all these variables simultaneously, making it impossible to isolate the independent contribution of tacit knowledge to project outcomes.

## Mediational mechanisms have empirical support but incomplete evidence

Research on causal pathways suggests tacit knowledge may not directly cause failures but operates through several mediational mechanisms:

**Communication breakdown** has the strongest empirical support as a mediator. PMI's Pulse of the Profession found poor communication contributes to **56% of failed projects**. The mediational chain—knowledge deficit → communication breakdown → requirements misalignment → project failure—has face validity and correlational support, though experimental verification is lacking.

**Knowledge transfer structures** mediate outcomes. SEM studies show project management offices play a mediation role in knowledge transfer between projects. A Frontiers in Psychology study (n=246) found **tacit knowledge creation mediates** the relationship between critical success factors and project success, while explicit knowledge creation does not—suggesting the tacit/explicit distinction matters for outcomes.

**Trust → knowledge sharing → performance** represents another validated pathway. Asymmetric trust shows significant negative association with project management performance, and tacit and explicit knowledge sharing have different degrees of impact on improving performance.

However, most mediation evidence comes from cross-sectional SEM studies that assume rather than test temporal ordering. True longitudinal mediation analysis remains rare.

## Intervention studies provide the closest evidence for causation

Knowledge management intervention studies offer the most promising quasi-experimental evidence, though with important limitations:

**Code inspection and review** has strong experimental support. Basili and Selby's (1987) controlled experiment with 32 professional programmers found code reading detected **80% more faults per hour** than testing. Multiple replicated experiment families on Perspective-Based Reading show teams achieve significantly better document coverage than teams without systematic techniques.

**Pair programming** meta-analysis (Hannay et al., 2009) of 18 controlled experiments found a small significant positive effect on quality, medium positive effect on compressed schedules, but medium **negative** effect on effort (approximately 15% more person-hours). The mechanism operates through knowledge sharing—pairs increase files developers know about by **66-150%**.

**Test-Driven Development** meta-analysis of 27 studies found a small positive effect on quality but little to no discernible effect on productivity. Effect sizes depend on task complexity and the test effort difference between TDD and control conditions.

**Knowledge integration studies** show strong correlational evidence. Tiwana's field study of 232 software projects found higher integration of business domain knowledge with technical knowledge increases development effectiveness, reduces defect density, and lowers warranty defects.

Critical limitations persist: 14 of 18 pair programming studies used student samples, limiting generalizability. Most controlled experiments lack standardized effect size reporting. Mentoring and shadowing programs—potentially crucial for tacit knowledge transfer—have surprisingly little rigorous experimental evidence, remaining primarily observational and qualitative.

## The limits of current evidence demand epistemic humility

The empirical foundation for claiming tacit knowledge deficits cause software project failure is substantially weaker than commonly assumed. The honest assessment:

**What we can reasonably claim**: Knowledge factors are consistently associated with project outcomes across multiple independent correlational studies. Natural experiments on developer turnover show temporal precedence—knowledge loss precedes productivity decline. Specific interventions (code review, pair programming) cause improved defect detection in controlled experiments. Communication breakdown mediates the knowledge-outcome relationship.

**What we cannot claim with confidence**: That tacit knowledge deficits directly cause project failure (as opposed to correlating with it). That requirements problems cause 39-47% of failures (the statistics are unreliable). That fixing early-phase knowledge deficits would reduce failures by specific percentages. That Boehm's cost escalation ratios apply to modern development contexts.

**What would establish stronger causal claims**: Prospective longitudinal studies measuring knowledge states before outcomes manifest. Randomized or quasi-experimental interventions testing knowledge transfer improvements with project outcomes as dependent variables. Application of modern causal inference methods—propensity score matching, instrumental variables, difference-in-differences. Systematic meta-analyses with pooled effect sizes and publication bias assessment.

The field suffers from what might be called "citogenesis"—the same few questionable sources cited repeatedly until they acquire the patina of established fact. Future research and practice should acknowledge these evidentiary limitations rather than continuing to cite statistics that their own authors now characterize as "opinion." The relationship between knowledge and project success is almost certainly real, but the precise magnitude, mechanisms, and moderators remain substantially uncertain.