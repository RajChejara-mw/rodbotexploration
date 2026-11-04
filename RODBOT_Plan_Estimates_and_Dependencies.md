# RODBOT: Plan, Estimates and Dependency Map (DRAFT v0.1)

Date: 2026-11-02. Basis: `RODBOT_Discovery_Plan.md`, `RODBOT_Discovery_Status_Board.xlsx`, `RODBOT_Project_Brief_and_Scope_Handoff.md`.
**All estimates are my assumptions** (ideal effort in person-days, one discovery designer using the AI agents, plus client turnaround). Confirm before committing to dates.

## Where we are
Rod's end-October deadline has passed. The status board still shows steps 6 and 7 (interviews) as URGENT, and the brief is only approved on assumptions. **Confirm whether the P1 questions reached Rod via Steven before he left.** If they did not, the plan below shifts to the fallback path (Damian plus artifacts, P1 re-asked in January).

## Estimates by step

| # | Step | Effort (pd) | Client wait | Confidence | Notes |
|---|---|---|---|---|---|
| 1 | Scope: validate [A] criteria, Gate 1 | 1.0 | 3-5 d (Steven) | Med | Needs numeric targets, budget, timeline |
| 2 | Stakeholder map and RACI, Gate 2 | 1.5 | 2-3 d | High | Owners of steps 2, 12, 16 must be named |
| 3 | Current Solution prioritisation, Gate 3 | 2.0 | none | High | Swimlane v0.2 exists |
| 4 | User Mindset (personas, adoption risks) | 2.0 | none | Med | Only roles known; coordinators start Nov |
| 5 | Benchmark | 2.0 | none | Med | Low priority, parallel filler |
| 6 | Interview guide (Steven-mediated P1) | 1.0 | none | High | Already drafted in plan (A1-C5) |
| 7 | Run interviews (human) | 2.0 | 5-10 d | **Low** | Depends on Steven and Damian availability |
| 8 | Insights and JTBD | 2.0 | none | Med | Quality depends on step 7 |
| 9 | User Journey | 2.0 | none | High | |
| 10 | Use Cases with error flows, Gate 4 | 3.0 | 2-3 d review | Med | |
| 11 | Envision (value proposition) | 1.5 | none | High | |
| 12 | Storyteller (pitch) | 1.5 | none | High | |
| 13 | Prototype re-spec from use cases, Gate 5 | 4.0 | 3-5 d review | Med | v0 exists, so re-spec not greenfield |
| | **Total** | **~25.5 pd** | | | About 5 weeks elapsed with client waits |

Release 1 build (Echuca pilot) is not estimated here. It needs the PRD, and its size hinges on the Command QC API decision (see risks).

## Dependency map

```
[1 Scope/Gate1] ──► [2 Stakeholders/Gate2] ──┬──► [6 Interview guide] ──► [7 Run interviews] ──► [8 Insights] ──┐
        │                                     │                                                                  ├─► [10 Use Cases/Gate4] ─► [11 Envision] ─► [12 Storyteller] ─► [13 Prototype/Gate5]
        └──► [3 Current Solution/Gate3] ──────┴──► [9 User Journey] ───────────────────────────────────────────┘          ▲
        └──► [4 User Mindset] ───────────────────────────────────────────────────────────────────────────────────────────┘ (feeds 8, 9, 10)
[5 Benchmark] ─ independent, feeds 11
```

| Step | Hard depends on | Soft depends on | Blocks |
|---|---|---|---|
| 1 | none | Steven's input on criteria | 2, 3, 4 |
| 2 | 1 | | 6 (who to interview), 7 |
| 3 | 1 | | 9, 10 |
| 4 | 1 | 2 | 8, 9 |
| 5 | none | | 11 |
| 6 | 2 | 3 (to target gaps) | 7 |
| 7 | 6 | Steven, Damian availability | 8 |
| 8 | 7 | 4 | 10 |
| 9 | 3 | 4, 7 | 10 |
| 10 | 8, 9 | | 11, 13 |
| 11 | 10 | 5 | 12, 13 |
| 12 | 11 | | Gate 5 |
| 13 | 10, 11 | Gate 4 approval | build |

**Critical path:** 1 → 2 → 6 → 7 → 8 → 10 → 11 → 13. Step 7 is the largest schedule risk because its duration is set by the client, not by us.

**Parallelisable now:** 3, 4, 5 and the start of 9 can run beside 1, 2 and 6.

## External dependencies (outside our control)

| Dependency | Owner | Blocks | Needed by |
|---|---|---|---|
| Command QC API approval | Daryl | Any automation build; exception reports | Before PRD sizing |
| Cartage formula, margin formula, quarry-to-concrete code map | Rod (via Steven), Damian | Use cases for steps on pricing; prototype logic | Step 10 |
| Costing data refresh (7 of 8 plants dated 1 Oct 2023) | Plant managers / Accounts | Plant feasibility and margin checks | Step 13 |
| Owner for step 12 after Rod | Steven | Gate 2, success criterion 4 | Now (Rod gone) |
| Coordinators onboarded | Mawsons | Step 4 validation | Nov |
| Rod back (late Dec/Jan) | Rod | Validation of P2 questions and build review | Jan |

## Suggested sequence (assumes interviews not yet done)

| Week | Work |
|---|---|
| 1 (3 Nov) | 1, 2, 3 and 6 in parallel; send P1 questions to Steven and Damian immediately |
| 2 | 4, 7 (interviews), 9 start; 5 as filler |
| 3 | 8, 9, Gate 3 |
| 4 | 10, Gate 4 |
| 5 | 11, 12, 13, Gate 5 |
| Jan | P2 questions with Rod, validate prototype logic, size release 1 |

## Risks to the plan
1. **Interview slippage** (step 7): each week of delay moves everything on the critical path. Mitigation: use Damian and existing artifacts (8 Oct session, PDF transcript, costing workbook) as second source, mark Rod-only items as January.
2. **Assumed criteria never validated:** Gate 1 stays provisional, so rework risk reaches steps 10 and 13. Mitigation: get numeric targets from Steven in week 1.
3. **API access refused:** release 1 falls back to file-based exports of Reporting Services. This changes the build estimate and should be decided before the PRD.
4. **Estimate accuracy:** these come from step names, not from sampled agent runs. Treat ±30%.

## Questions for you
1. Did P1 questions reach Rod before he left?
2. Is the goal of this plan discovery only, or should it also cover release 1 build?
3. Is there a fixed end date or budget from Mawsons?
