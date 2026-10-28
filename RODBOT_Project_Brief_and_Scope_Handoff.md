# RODBOT: Project Brief v0.2 and Scope Handoff

Status: **Gate 1 approved on ASSUMPTIONS (provisional).** Items marked [A] are assumed and need validation by Steven Eeles / the design team.
Date: 2026-10-20. Sources: Mawsons_Process_Understanding_share.html (v0.2), Mawsons_Ops_Prototype.html, Design Discovery Skills Playbook.

## Handoff Summary
- **Client:** Mawsons, ready-mix concrete and quarry business (regional VIC / southern NSW). Cement exclusively from ICL (Adbri-owned); aggregates/sands from own quarry; admixtures external.
- **Problem:** Quote and pricing accuracy depends on Rod (retiring end Oct 2026; returns late Dec/Jan; avoids direct interviews, Steven is the conduit). His tacit checks: 3 morning exception reports, plant feasibility, second price check, quote expiry / price-increase tracking.
- **Objective:** Capture Rod's tacit knowledge and automate or de-risk the quote-to-cash pricing checks. Pilot plant: Echuca.
- **In scope:** the 16-step workflow (price foundation, quote build, quote to cash); Command QC, Reporting Services, costing workbook. [A] Out of scope: replacing Command QC; non-pilot plants in release 1.
- **Users:** 2 new coordinators (Nov), Damian Cherry, plant/regional/ops managers; Rod in January.

## Success criteria [A: all assumed]
1. [A] The 3 morning exception reports run automatically and match Rod's results on a sample.
2. [A] Mix designs are auto-checked against a plant-capability matrix before the costing sheet is built (warn or block rule TBC).
3. [A] Quote expiry (30-day) and supplier price-increase alerts are live, each with a named recipient and action.
4. [A] Every workflow step has a named owner from 1 Nov 2026 (steps 2, 12, 16 first).
5. [A] Margin versus the 20-22% Adbri target is flagged on every quote.
Assumed priority order [A]: 4 and 1 first (ownership gap, exception reports), then 2, 3, 5.
Assumed timing [A]: knowledge capture before 31 Oct; build and validation with Rod in Jan.

## Risks
- Command QC API access unconfirmed (needs Daryl's approval).
- Rod's knowledge loss; indirect access only.
- Costing tab stale (7 of 8 plants dated 1 Oct 2023).
- No cartage formula, no margin formula, no quarry-to-concrete code map.
- Step 12 (accepted pricing into Command) owner unconfirmed ("Rod, I think").

## Gaps and open questions for the client
1. Numeric targets (hours saved, errors avoided)? Not yet defined.
2. Replicate Rod's checks, or redesign the process? [A] Replicate first, redesign later.
3. Budget and post-October timeline?
4. Command API approval status and who is chasing it?
5. Who decides a mix is "standard" (skips design and costing)?

## Transition Handoff (paste into the next agent)
```markdown
# Handoff: Scope Agent -> Stakeholder Mapping / Current Solution / Interview
project: RODBOT (Mawsons quote & pricing automation)
client: Mawsons (ICL/Adbri-aligned ready-mix and quarry), regional VIC/southern NSW
pilot_plant: Echuca
deadline: Rod leaves end Oct 2026; returns late Dec/Jan; indirect access via Steven Eeles
objective: capture tacit pricing knowledge; automate exception reports, plant feasibility, expiry alerts; assign owners to all steps
success_criteria_assumed: [exception reports automated, plant feasibility auto-check, expiry/price alerts, named owner per step from 1 Nov, margin vs 20-22% flagged]
systems: Command QC, Microsoft Reporting Services, costing workbook (P drive -> SharePoint target)
key_risks: [API access unconfirmed, stale costing data, step 12 owner unknown, no cartage/margin formula, no code map]
people: Steven Eeles, Rod, Damian Cherry, 2 new coordinators, plant/regional/ops managers, Accounts, Technical team, Adbri, Daryl
status: Gate 1 approved on assumptions (provisional)
```
