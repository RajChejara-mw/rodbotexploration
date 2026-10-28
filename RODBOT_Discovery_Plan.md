# RODBOT: Design Discovery Plan (Playbook x Mawsons project docs)

Sources: Design Discovery Skills Playbook (slides 16-19) and the Drive folder `1R3Gj2a32iK-30lEUfKrugOVR70DvnPjW` (`Mawsons_Process_Understanding_share.html` v0.2, `Mawsons_Ops_Prototype.html`).
Rule from the playbook: you orchestrate, you supply quality input, each gate needs your approval. Handoffs between agents are copy/paste Markdown.

## Hard constraint
Rod (retiring, 30 yrs, tacit knowledge) leaves **end of October 2026**; back late Dec/Jan. He avoids direct interviews, so Steven Eeles is the conduit. Anything only Rod knows must be captured before then. P1 questions come first.

## Status board

| # | Agent | Phase | Project evidence already in Drive | Gap to close | Status |
|---|---|---|---|---|---|
| 1 | Scope | Understanding | Pilot plant Echuca, Rod deadline, 20-22% Adbri margin target, tech stack | Success criteria / KPIs, risks, brief sign-off | TO DO (input pack below) |
| 2 | Stakeholder Mapping | Understanding | Steven Eeles, Rod, Damian Cherry, 2 new coordinators, managers, Accounts, Technical, Adbri, Daryl (API approval) | RACI, owners of steps 2, 12, 16 | TO DO |
| 3 | Current Solution | Understanding | 16-step as-is swimlane v0.2, Coleambally workbook, Command QC + Reporting Services | Heuristic/priority matrix, "invisible" steps | MOSTLY DONE, run to prioritise |
| 4 | User Mindset | Understanding | Roles only (coordinators, Damian, Rod) | Personas, devices/context (D3), adoption risks | TO DO |
| 5 | Benchmark | Understanding | none | Quoting/pricing automation tools in concrete/construction | TO DO (lower priority) |
| 6 | Interview | Understanding | 8 Oct session, questionnaire | Steven-mediated P1 guide, Damian as 2nd source | **URGENT** |
| 7 | (human) interviews | Understanding | | Run before 31 Oct | **URGENT** |
| 8 | Insights | Analysing | | Needs interview answers; JTBD | BLOCKED on 7 |
| 9 | User Journey | Analysing | Swimlane as base | Pain points and improvements | TO DO |
| 10 | Use Cases | Analysing | Prototype screens imply some | Evidence-based list, error flows | TO DO |
| 11 | Envision | Envisioning | | Value proposition | TO DO |
| 12 | Storyteller | Envisioning | | Pitch and scenarios | TO DO |
| 13 | Prompt to Prototype | Envisioning | `Mawsons_Ops_Prototype.html` (Dashboard, Quotes, Exception Reports, Plant Matrix, New Quote) | Re-spec from approved use cases | PROTOTYPE v0 EXISTS |

## Quality gates (your approval)
1. **Project Brief** (Scope agent): are KPIs real, not vanity? Goals realistic?
2. **Power structure** (Stakeholders): any veto-holder missing? Who owns step 12 after Rod?
3. **Diagnosis and priorities** (Current Solution): do "critical" items match real cost? Any invisible manual steps?
4. **JTBD and use cases** (Insights, Journey, Use Cases): evidence-based, error flows covered?
5. **Value proposition, presentation, prototype** (Envision to Prototype): approved with stakeholders.

## Step 1: Scope Agent input pack (paste after saying "Hi")

**Company:** Mawsons: concrete and quarry business; cement supplied exclusively by ICL (Adbri-owned); aggregates/sands from own quarry; admixtures from external suppliers.
**Industry:** Construction materials, ready-mix concrete.
**Project description:** Automate and de-risk the quote and pricing workflow (supplier price foundation to quote build to quote-to-cash), because Rod, the retiring backstop for pricing, quoting and costing checks, leaves end of October 2026. Much of his work is data-vs-data alignment (morning exception reports, plant feasibility, quote expiry tracking). Pilot plant: Echuca (fixed plant).
**Region:** Regional Victoria / southern NSW plants (Echuca, Shepparton, Deniliquin, Barham, Colin Ruby, Coleambally area).
**Optional:**
- Users: 2 new coordinators (from November), Damian Cherry, plant/regional/ops managers; Rod returns Jan.
- Success criteria: TO CONFIRM (suggested: exception reports automated; plant feasibility auto-checked; quote expiry and price-increase alerts live; no step left with an unknown owner after Rod leaves).
- Risks: Command QC API access (needs Daryl's approval), Rod's knowledge loss, stale cost data (7 of 8 plants dated 1 Oct 2023), no cartage or margin formula, no quarry-to-concrete code map.
- Constraints: Rod averse to interviews; Command QC + Reporting Services are the systems of record; 30-day quote validity; delegated authority incl. Adbri sign-off for major projects.

## Step 4/6: Interview Agent input (P1 questions only, route via Steven)
- **Ownership:** A1 who enters accepted pricing in Command (step 12); A2 rework loop on rejected mixes; A3 briefing of new coordinators; A4 Damian's formal ownership.
- **Pricing rules:** B1 cartage formula; B2 how margin is applied; B3 are costing-tab prices current.
- **Data and systems:** C1 the three exception reports (fields, pass/fail, sample output); C2 Command API approval; C3 quarry-to-concrete code mapping; C4 plant capability data; C5 how the mix design reaches the coordinator.
- **P2 (January):** A5, B4, B5, D1-D3.

## Handoff log (fill as each agent finishes)
| Agent | Date | Handoff Summary reviewed | Transition Handoff (.md) saved to Drive | Gate passed |
|---|---|---|---|---|
| Scope | | | | |

## Open question
Success criteria for Gate 1 still need to be confirmed.
