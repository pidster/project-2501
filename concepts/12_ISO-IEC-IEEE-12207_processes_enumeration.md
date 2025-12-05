# ISO/IEC/IEEE 12207:2017 Software Life Cycle Processes
## Complete Process Enumeration with AI Extensions (ISO/IEC 5338:2023)

**Standard**: ISO/IEC/IEEE 12207:2017 — Systems and software engineering — Software life cycle processes  
**AI Extension**: ISO/IEC 5338:2023 — Information technology — Artificial intelligence — AI system life cycle processes  
**Document Purpose**: Enumerate all processes, activities, and tasks for framework alignment

---

## Process Structure Overview

ISO/IEC/IEEE 12207:2017 defines **30 processes** organised into **4 process groups**:

| Process Group | Process Count | Clause |
|---------------|---------------|--------|
| Agreement Processes | 2 | 6.1 |
| Organisational Project-Enabling Processes | 6 | 6.2 |
| Technical Management Processes | 8 | 6.3 |
| Technical Processes | 14 | 6.4 |
| **Total** | **30** | |

Each process is defined by:
- **Purpose**: High-level objective of performing the process
- **Outcomes**: Observable results of successful process achievement
- **Activities**: Sets of cohesive tasks
- **Tasks**: Specific actions to be performed

---

## 1. Agreement Processes (Clause 6.1)

These processes establish agreements between parties for the acquisition and supply of products or services.

### 1.1 Acquisition Process (6.1.1)

**Purpose**: Obtain a product or service that satisfies the acquirer's stated needs.

**Outcomes**:
- Acquisition needs are established
- Acquisition alternatives are evaluated
- Supplier selection is complete
- Agreement(s) are established
- The product or service is accepted

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Acquisition preparation | Define acquisition strategy; establish acquisition requirements; identify potential suppliers |
| Acquisition advertisement | Communicate acquisition opportunity; issue request for proposal |
| Supplier selection | Evaluate proposals; select supplier(s); negotiate agreement |
| Agreement monitoring | Monitor supplier performance; manage contract changes |
| Acquirer acceptance | Verify deliverables; accept product or service |

**AI Extension (5338)**: Generic process — no AI-specific modifications required.

---

### 1.2 Supply Process (6.1.2)

**Purpose**: Provide a product or service that meets agreed requirements.

**Outcomes**:
- Response to acquirer's request is prepared
- Agreement is established
- Product or service is delivered
- Supplier obligations are fulfilled

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Opportunity identification | Identify acquisition opportunities; prepare response |
| Supplier tendering | Prepare and submit tender/proposal |
| Contract agreement | Negotiate and establish agreement |
| Contract execution | Execute development/delivery per agreement |
| Product/service delivery | Deliver and transfer product or service |

**AI Extension (5338)**: Generic process — no AI-specific modifications required.

---

## 2. Organisational Project-Enabling Processes (Clause 6.2)

These processes enable the organisation to manage projects and establish the environment for project execution.

### 2.1 Life Cycle Model Management Process (6.2.1)

**Purpose**: Define, maintain, and assure availability of policies, life cycle processes, models, and procedures.

**Outcomes**:
- Organisational policies are defined
- Life cycle models and processes are defined
- Process improvement opportunities are identified

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Establish life cycle process | Define organisational life cycle processes; establish tailoring guidelines |
| Assess life cycle process | Assess process effectiveness; identify improvement needs |
| Improve life cycle process | Plan and implement process improvements |

**AI Extension (5338)**: Modified process — requires consideration of AI-specific lifecycle characteristics (data drift, model decay, continuous validation needs).

---

### 2.2 Infrastructure Management Process (6.2.2)

**Purpose**: Provide infrastructure and services to projects to support organisational objectives.

**Outcomes**:
- Infrastructure requirements are identified
- Infrastructure elements are acquired or developed
- Infrastructure is maintained and improved

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Establish infrastructure | Identify infrastructure requirements; acquire or develop infrastructure elements |
| Maintain infrastructure | Operate and maintain infrastructure; monitor performance |
| Improve infrastructure | Identify improvement opportunities; implement changes |

**AI Extension (5338)**: Modified process — requires AI-specific infrastructure (ML platforms, data pipelines, model registries, GPU/TPU resources, monitoring infrastructure).

---

### 2.3 Portfolio Management Process (6.2.3)

**Purpose**: Initiate and sustain necessary, sufficient, and suitable projects to meet strategic objectives.

**Outcomes**:
- Portfolio of projects is defined
- Resources are allocated across portfolio
- Portfolio performance is assessed

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Define portfolio | Identify strategic objectives; define portfolio composition |
| Evaluate portfolio | Assess portfolio against objectives; analyse resource allocation |
| Manage portfolio | Balance portfolio; manage interdependencies |

**AI Extension (5338)**: Generic process — no AI-specific modifications required.

---

### 2.4 Human Resource Management Process (6.2.4)

**Purpose**: Provide the organisation with necessary human resources and maintain competencies.

**Outcomes**:
- Skills and competencies are identified
- Personnel are acquired and assigned
- Training needs are identified and addressed

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Identify skills | Identify required skills and competencies |
| Develop skills | Plan and provide training; develop competencies |
| Acquire and provide skills | Recruit, assign, and manage personnel |

**AI Extension (5338)**: Modified process — requires AI-specific skills (data science, ML engineering, MLOps, AI ethics, domain expertise for training data).

---

### 2.5 Quality Management Process (6.2.5)

**Purpose**: Assure that products, services, and implementations of processes meet organisational and project quality objectives.

**Outcomes**:
- Quality management policies are defined
- Quality objectives are established
- Quality is assessed and improvement actions taken

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Plan quality management | Define quality policies; establish quality objectives |
| Assess quality | Evaluate quality against objectives; analyse quality data |
| Improve quality | Identify quality improvement opportunities; implement improvements |

**AI Extension (5338)**: Modified process — requires AI-specific quality considerations (model performance metrics, fairness measures, bias detection, explainability standards).

---

### 2.6 Knowledge Management Process (6.2.6)

**Purpose**: Create, maintain, and apply organisational knowledge throughout the life cycle.

**Outcomes**:
- Knowledge is identified and maintained
- Knowledge is made available to the organisation
- Knowledge is preserved and updated

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Plan knowledge management | Identify knowledge needs; define knowledge management strategy |
| Share knowledge | Establish knowledge repositories; facilitate knowledge transfer |
| Manage knowledge | Maintain knowledge currency; preserve critical knowledge |

**AI Extension (5338)**: Modified process — requires management of AI-specific knowledge (model architectures, training procedures, hyperparameter configurations, data preprocessing steps).

---

## 3. Technical Management Processes (Clause 6.3)

These processes establish and implement project planning, monitoring, and control.

### 3.1 Project Planning Process (6.3.1)

**Purpose**: Produce and communicate effective and workable project plans.

**Outcomes**:
- Project scope is defined
- Plans and schedules are established
- Resources are identified and allocated

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Define project | Define project scope; identify constraints and assumptions |
| Plan project | Develop project schedule; identify resources; plan activities |
| Activate project | Implement plans; initiate project execution |

**AI Extension (5338)**: Modified process — must account for iterative nature of AI development, data acquisition timelines, experimentation phases, model training compute requirements.

---

### 3.2 Project Assessment and Control Process (6.3.2)

**Purpose**: Determine status of the project and ensure it performs according to plans.

**Outcomes**:
- Project performance is assessed
- Corrective actions are implemented when needed
- Progress is reported

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Plan assessment | Define assessment approach; establish assessment criteria |
| Assess project | Collect and analyse project data; compare to plans |
| Control project | Identify deviations; implement corrective actions |

**AI Extension (5338)**: Modified process — requires tracking of AI-specific metrics (model accuracy, data quality, training progress, drift indicators).

---

### 3.3 Decision Management Process (6.3.3)

**Purpose**: Select the most beneficial course of action from alternatives.

**Outcomes**:
- Decision management strategy is defined
- Decisions are analysed and selected
- Decision rationale is recorded

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for decisions | Identify decisions; establish decision approach |
| Analyse decision information | Gather information; analyse alternatives |
| Make and manage decisions | Select course of action; record rationale; implement decision |

**AI Extension (5338)**: Modified process — must consider AI-specific decision factors (algorithm selection, model architecture choices, training/inference trade-offs, ethical considerations).

---

### 3.4 Risk Management Process (6.3.4)

**Purpose**: Identify, analyse, treat, and monitor risks continuously.

**Outcomes**:
- Risks are identified and analysed
- Risk treatment actions are implemented
- Risks are monitored

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Plan risk management | Define risk management approach; establish risk criteria |
| Manage risk profile | Identify and analyse risks; prioritise risks |
| Analyse risks | Assess risk probability and impact; evaluate treatment options |
| Treat risks | Select and implement risk treatments; monitor effectiveness |

**AI Extension (5338)**: Modified process — must address AI-specific risks (model bias, data privacy, adversarial attacks, model decay, regulatory compliance, ethical risks).

---

### 3.5 Configuration Management Process (6.3.5)

**Purpose**: Establish and maintain integrity of work products throughout the life cycle.

**Outcomes**:
- Items requiring configuration management are identified
- Baselines are established
- Changes are controlled
- Configuration status is recorded

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Plan configuration management | Define configuration management approach; identify configuration items |
| Perform configuration identification | Identify items; establish baselines |
| Perform configuration change management | Control changes; evaluate change requests |
| Perform configuration status accounting | Record and report configuration status |
| Perform configuration evaluation | Verify configuration integrity; audit configurations |
| Perform release management | Manage release planning and execution |

**AI Extension (5338)**: Modified process — requires versioning of data sets, model weights, hyperparameters, training pipelines, and feature engineering code in addition to traditional artefacts.

---

### 3.6 Information Management Process (6.3.6)

**Purpose**: Provide relevant, timely, complete, valid, and accurate information to parties.

**Outcomes**:
- Information to be managed is identified
- Information is obtained, protected, and distributed
- Information is maintained

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Plan information management | Identify information needs; define information management approach |
| Perform information management | Collect, store, and distribute information; protect information |

**AI Extension (5338)**: Modified process — must manage AI-specific information (model cards, data sheets, training logs, evaluation results, bias assessments).

---

### 3.7 Measurement Process (6.3.7)

**Purpose**: Collect, analyse, and report data relating to products, processes, and projects.

**Outcomes**:
- Information needs are identified
- Measures are defined and collected
- Analysis results are communicated

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Plan measurement | Identify information needs; select measures; plan collection |
| Perform measurement | Collect data; analyse data; report results |

**AI Extension (5338)**: Modified process — requires AI-specific measures (precision, recall, F1, AUC-ROC, fairness metrics, inference latency, model size, training cost).

---

### 3.8 Quality Assurance Process (6.3.8)

**Purpose**: Provide assurance that work products and processes comply with plans, standards, and procedures.

**Outcomes**:
- Quality assurance activities are planned
- Compliance is evaluated
- Non-conformances are identified and addressed

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Plan quality assurance | Define QA approach; identify evaluation criteria |
| Perform product quality assurance | Evaluate work products against requirements |
| Perform process quality assurance | Evaluate processes against plans and standards |
| Manage quality assurance records | Maintain QA records; report findings |

**AI Extension (5338)**: Modified process — requires assurance of AI-specific quality attributes (model robustness, fairness, explainability, reproducibility).

---

## 4. Technical Processes (Clause 6.4)

These processes transform stakeholder needs into products and services.

### 4.1 Business or Mission Analysis Process (6.4.1)

**Purpose**: Define the business or mission problem or opportunity, characterise solution space, and determine potential solution classes.

**Outcomes**:
- Problems or opportunities are defined
- Solution space is characterised
- Solution classes are identified

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for business/mission analysis | Define analysis approach; gather stakeholder information |
| Define problem or opportunity space | Analyse context; identify problems or opportunities |
| Characterise solution space | Identify constraints; define solution boundaries |

**AI Extension (5338)**: Modified process — must determine suitability of AI approaches; assess data availability; evaluate AI solution feasibility.

---

### 4.2 Stakeholder Needs and Requirements Definition Process (6.4.2)

**Purpose**: Define stakeholder needs and requirements that can serve as basis for defining system requirements.

**Outcomes**:
- Stakeholders are identified
- Stakeholder needs are established
- Stakeholder requirements are defined

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for stakeholder needs/requirements definition | Identify stakeholders; plan elicitation approach |
| Define stakeholder needs | Elicit needs; analyse needs; document needs |
| Develop operational concept and scenarios | Define operational environment; develop usage scenarios |
| Transform stakeholder needs into requirements | Analyse needs; develop stakeholder requirements |
| Analyse stakeholder requirements | Validate requirements; resolve conflicts |
| Manage stakeholder requirements | Maintain requirements; trace requirements |

**AI Extension (5338)**: Modified process — must elicit AI-specific requirements (acceptable error rates, fairness constraints, explainability needs, response time requirements, continuous learning needs).

---

### 4.3 System/Software Requirements Definition Process (6.4.3)

**Purpose**: Transform stakeholder, user-oriented view of desired services into technical view of required product.

**Outcomes**:
- System/software requirements are defined
- Requirements are analysed and validated
- Requirements baseline is established

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for system/software requirements definition | Define requirements engineering approach |
| Define system/software requirements | Analyse stakeholder requirements; derive system requirements |
| Analyse system/software requirements | Evaluate requirements; identify conflicts; verify feasibility |
| Manage system/software requirements | Maintain traceability; manage changes |

**AI Extension (5338)**: Modified process — must define AI-specific functional and non-functional requirements (performance thresholds, data quality requirements, model interpretability requirements).

---

### 4.4 Architecture Definition Process (6.4.4)

**Purpose**: Generate system architecture alternatives, select one or more that address concerns and meet requirements.

**Outcomes**:
- Architecture viewpoints are identified
- Architecture views are developed
- Architecture candidates are assessed
- Architecture baseline is established

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for architecture definition | Define architecture framework; identify stakeholder concerns |
| Develop architecture viewpoints | Select or develop viewpoints |
| Develop architecture models | Create architecture views; model architecture elements |
| Relate architecture to design | Define system elements; allocate requirements |
| Assess architecture candidates | Evaluate alternatives; select architecture |
| Manage architecture | Maintain architecture baseline; assess conformance |

**AI Extension (5338)**: Modified process — must address AI-specific architecture concerns (ML pipeline architecture, model serving infrastructure, data flow architecture, monitoring architecture).

---

### 4.5 Design Definition Process (6.4.5)

**Purpose**: Provide sufficient detailed data and information about the system to enable implementation consistent with architecture.

**Outcomes**:
- Design characteristics are defined
- Design elements are identified
- Design alternatives are evaluated
- Design enables traceability

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for design definition | Define design approach; identify constraints |
| Establish design characteristics | Define interfaces; allocate requirements to design elements |
| Assess design alternatives | Evaluate alternatives; select design |
| Manage design | Maintain design baseline; verify design implementation |

**AI Extension (5338)**: Modified process — must design AI-specific elements (model architecture, feature engineering pipelines, training infrastructure, inference systems).

---

### 4.6 System Analysis Process (6.4.6)

**Purpose**: Provide rigorous basis of data and information for technical understanding to aid decision making.

**Outcomes**:
- Analysis criteria are defined
- Analysis is performed
- Results are reported

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for system analysis | Define analysis scope; establish analysis approach |
| Perform system analysis | Execute analysis; interpret results |
| Manage system analysis | Document analysis; communicate results |

**AI Extension (5338)**: Generic process — applies to AI systems without modification.

---

### 4.7 Implementation Process (6.4.7)

**Purpose**: Realise specified system element.

**Outcomes**:
- Implementation strategy is defined
- System element is realised
- System element is packaged and stored

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for implementation | Define implementation strategy; identify constraints |
| Perform implementation | Realise system elements; perform unit testing |
| Manage implementation | Maintain traceability; package work products |

**AI Extension (5338)**: Modified process — includes AI-specific implementation (model training, hyperparameter tuning, feature engineering, model serialisation).

---

### 4.8 Integration Process (6.4.8)

**Purpose**: Synthesise system elements into system configurations.

**Outcomes**:
- Integration strategy is defined
- System elements are assembled
- Integrated system is verified

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for integration | Define integration strategy; identify integration sequence |
| Perform integration | Assemble system elements; perform integration testing |
| Manage integration | Track integration progress; manage integration results |

**AI Extension (5338)**: Modified process — includes integration of AI components with traditional software, model deployment into serving infrastructure.

---

### 4.9 Verification Process (6.4.9)

**Purpose**: Provide objective evidence that a system element fulfils its requirements and characteristics.

**Outcomes**:
- Verification criteria are defined
- Verification activities are performed
- Defects are identified and reported

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for verification | Define verification strategy; identify verification criteria |
| Perform verification | Execute verification activities; record results |
| Manage verification | Analyse results; manage defects |

**AI Extension (5338)**: Modified process — includes AI-specific verification (model testing on held-out data, robustness testing, adversarial testing, fairness testing).

---

### 4.10 Transition Process (6.4.10)

**Purpose**: Establish capability to provide services specified by stakeholder requirements in operational environment.

**Outcomes**:
- Transition strategy is defined
- System is installed in operational environment
- Users and operators are trained

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for transition | Define transition strategy; identify transition constraints |
| Perform transition | Install system; train users; enable operations |
| Manage transition | Verify transition; manage issues |

**AI Extension (5338)**: Modified process — includes AI-specific transition activities (model deployment, A/B testing setup, monitoring establishment, rollback procedures).

---

### 4.11 Validation Process (6.4.11)

**Purpose**: Provide objective evidence that services provided by system fulfil stakeholder requirements.

**Outcomes**:
- Validation criteria are defined
- Validation activities are performed
- Evidence of compliance is provided

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for validation | Define validation strategy; identify validation criteria |
| Perform validation | Execute validation activities; record results |
| Manage validation | Analyse results; confirm stakeholder agreement |

**AI Extension (5338)**: Modified process — includes AI-specific validation (real-world performance assessment, user acceptance of AI behaviour, ethical validation).

---

### 4.12 Operation Process (6.4.12)

**Purpose**: Use the system to deliver its services.

**Outcomes**:
- Operation strategy is defined
- System services are delivered
- Operational performance is monitored

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for operation | Define operation strategy; identify operational constraints |
| Perform operation | Deliver system services; monitor performance |
| Manage operation | Identify operational issues; manage operational changes |

**AI Extension (5338)**: Modified process — includes AI-specific operations (model performance monitoring, drift detection, ongoing fairness monitoring).

---

### 4.13 Maintenance Process (6.4.13)

**Purpose**: Sustain capability of system to provide a service.

**Outcomes**:
- Maintenance strategy is defined
- Corrective, adaptive, and perfective modifications are made
- System capability is sustained

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for maintenance | Define maintenance strategy; establish maintenance plan |
| Perform maintenance | Implement modifications; verify changes |
| Manage maintenance | Track maintenance activities; analyse maintenance data |

**AI Extension (5338)**: Modified process — includes AI-specific maintenance (model retraining, data pipeline updates, feature drift handling).

---

### 4.14 Disposal Process (6.4.14)

**Purpose**: End existence of system element or system.

**Outcomes**:
- Disposal strategy is defined
- System is deactivated
- Elements are disposed of appropriately

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Prepare for disposal | Define disposal strategy; identify disposal constraints |
| Perform disposal | Deactivate system; dispose of elements |
| Finalise disposal | Confirm disposal; archive relevant data |

**AI Extension (5338)**: Modified process — includes AI-specific disposal (model retirement, training data retention/deletion per regulations, audit trail preservation).

---

## 5. AI-Specific Processes (ISO/IEC 5338:2023 Only)

ISO/IEC 5338:2023 introduces **three new processes** not present in ISO/IEC/IEEE 12207:2017:

### 5.1 Knowledge Acquisition Process (6.4.7 in 5338)

**Purpose**: Locate, collect, and refine knowledge and convert it into a form that can be processed by a knowledge-based AI system.

**Outcomes**:
- Required knowledge is identified
- Knowledge sources are accessed
- Knowledge is represented in usable form

**Note**: Primarily applies to heuristic/expert systems rather than ML systems.

---

### 5.2 AI Data Engineering Process (6.4.8 in 5338)

**Purpose**: Obtain, prepare, and manage data for AI system development and operation.

**Outcomes**:
- Data requirements are defined
- Data is collected and prepared
- Data quality is assured
- Data is managed throughout lifecycle

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Define data requirements | Identify data needs; define quality criteria |
| Collect data | Acquire data from sources; document provenance |
| Prepare data | Clean data; transform data; engineer features |
| Manage data | Version data; maintain data quality; govern data |

**This is a critical AI-specific process with no equivalent in traditional software lifecycle.**

---

### 5.3 Continuous Validation Process (6.4.14 in 5338)

**Purpose**: Monitor AI system behaviour in production and validate continued fitness for purpose.

**Outcomes**:
- Production monitoring is established
- Drift is detected and reported
- Retraining triggers are identified
- Continuous compliance is assured

**Activities**:

| Activity | Key Tasks |
|----------|-----------|
| Establish monitoring | Define monitoring metrics; deploy monitoring infrastructure |
| Monitor production | Collect production data; analyse model behaviour |
| Detect drift | Identify data drift; detect concept drift |
| Trigger remediation | Initiate retraining; update models; alert stakeholders |

**This is a critical AI-specific process addressing model decay and drift.**

---

## Appendix A: Process-to-Phase Mapping

For reference, the mapping between ISO/IEC/IEEE 12207:2017 processes and the framework's 7-phase SDLC model:

| Framework Phase | Primary 12207 Processes |
|-----------------|------------------------|
| **1. Initiation/Conception** | Business or Mission Analysis (6.4.1), Acquisition (6.1.1) |
| **2. Planning** | Project Planning (6.3.1), Risk Management (6.3.4), Portfolio Management (6.2.3) |
| **3. Analysis/Requirements** | Stakeholder Needs Definition (6.4.2), System/Software Requirements (6.4.3) |
| **4. Design/Architecture** | Architecture Definition (6.4.4), Design Definition (6.4.5), System Analysis (6.4.6) |
| **5. Implementation** | Implementation (6.4.7), Integration (6.4.8), Configuration Management (6.3.5) |
| **6. Testing/Validation** | Verification (6.4.9), Validation (6.4.11), Quality Assurance (6.3.8) |
| **7. Deployment/Operations** | Transition (6.4.10), Operation (6.4.12), Maintenance (6.4.13), Disposal (6.4.14) |

**Note**: Technical Management processes (6.3.x) and Organisational processes (6.2.x) span all phases.

---

## Appendix B: Process Classification Summary

| Classification | Count | Description |
|---------------|-------|-------------|
| **Generic** (unchanged from 15288/12207) | 6 | Applicable to AI without modification |
| **Modified** (AI-specific adaptations) | 21 | Require AI-specific considerations |
| **AI-Specific** (new in 5338) | 3 | Unique to AI system lifecycle |
| **Total** | 30 | (12207: 30; 5338: 33 with AI additions) |

---

*Document version: 1.0*  
*Source standards: ISO/IEC/IEEE 12207:2017, ISO/IEC 5338:2023*  
*Purpose: Process enumeration for AI-Augmented SDLC Framework*  
*Note: The pending ISO/IEC/IEEE FDIS 12207 revision may modify some process definitions*
