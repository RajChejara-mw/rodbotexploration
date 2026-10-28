# Discovery Stakeholder Map: RODBOT (Mawsons quote & pricing automation)

Status: provisional. Accountable owners and scores are assumptions pending validation by Steven Eeles. Date: 2026-10-20.

## Stakeholder Map

### Steven Eeles
- **Title / Role:** Unknown (Mawsons lead and primary conduit to Rod)
- **Org unit:** Mawsons
- **Category:** Decision-maker
- **Influence (1–5):** 4 — Reviews the discovery, shares the whiteboard and routes access to Rod. He also sends quotes on some non-fixed-plant projects.
- **Interest (1–5):** 5 — Directly answers the questionnaire and owns the outcome for Mawsons.
- **Sponsor status:** Unknown (likely Sponsor)
- **Source:** Human-provided (confidence: medium)

### Rod (retiring)
- **Title / Role:** Pricing, quoting and costing backstop; 30 years' experience
- **Org unit:** Mawsons (pricing and costing)
- **Category:** Operator
- **Influence (1–5):** 4 — Holds the undocumented knowledge, and nobody else can validate his checks. He leaves at the end of October.
- **Interest (1–5):** 3 — Engaged but avoids direct interviews. Returns late December or January.
- **Sponsor status:** Neutral
- **Source:** Human-provided (confidence: high)

### Damian Cherry
- **Title / Role:** Takes on some of Rod's responsibilities
- **Org unit:** Mawsons (coordination)
- **Category:** Operator
- **Influence (1–5):** 3 — Likely continuity bridge, but formal ownership is unconfirmed.
- **Interest (1–5):** 4 — Inherits part of the workload.
- **Sponsor status:** Unknown
- **Source:** Human-provided (confidence: medium)

### Two new coordinators (unnamed)
- **Title / Role:** Quote coordinators, starting in November
- **Org unit:** Mawsons (coordination)
- **Category:** Operator
- **Influence (1–5):** 2 — New and not yet briefed, though they are the daily users.
- **Interest (1–5):** 5 — Run RFQ routing, recipe entry and PDF upload.
- **Sponsor status:** Unknown
- **Source:** Human-provided (confidence: medium)

### Plant, regional and ops managers (unnamed)
- **Title / Role:** Review costing sheets, set margin and sign off
- **Org unit:** Mawsons (management)
- **Category:** Decision-maker
- **Influence (1–5):** 5 — Final approval on margin and sign-off for most quotes.
- **Interest (1–5):** 3 — Users of the outputs, not the builders.
- **Sponsor status:** Unknown
- **Source:** Human-provided (confidence: medium)

### Accounts team (unnamed)
- **Title / Role:** Loads rates from supplier invoices and checks client invoices
- **Org unit:** Mawsons (finance)
- **Category:** Operator
- **Influence (1–5):** 3 — Processes and pays invoices, which is where mismatches originate.
- **Interest (1–5):** 4 — Exception reports and credit requests touch their daily work.
- **Sponsor status:** Unknown
- **Source:** Human-provided (confidence: medium)

### Technical team (unnamed)
- **Title / Role:** Designs mixes; building a Technical Review Bot
- **Org unit:** Mawsons (technical)
- **Category:** Influencer
- **Influence (1–5):** 3 — Mix designs drive costing; owns feasibility rules in principle.
- **Interest (1–5):** 3 — The plant-capability matrix and mix handover affect them.
- **Sponsor status:** Unknown
- **Source:** Human-provided (confidence: medium)

### IT (unnamed)
- **Title / Role:** Possible role in loading or automating rates (not confirmed)
- **Org unit:** Mawsons (IT)
- **Category:** Influencer
- **Influence (1–5):** 3 — May control access to Command QC and Reporting Services.
- **Interest (1–5):** 2 — Involvement is assumed, not confirmed.
- **Sponsor status:** Unknown
- **Source:** Agent-inferred (confidence: low)

### Daryl
- **Title / Role:** Unknown; approver for API access to Command QC
- **Org unit:** Unknown
- **Category:** Decision-maker
- **Influence (1–5):** 4 — Gatekeeper. Without his approval the whole automation stack is blocked.
- **Interest (1–5):** 2 — No evidence of engagement yet.
- **Sponsor status:** Unknown
- **Source:** Human-provided (confidence: medium)

### Adbri
- **Title / Role:** Parent of ICL, Mawsons' only cement supplier; signs off major projects
- **Org unit:** External organisation
- **Category:** External actor
- **Influence (1–5):** 4 — Sets margin expectations (20–22%) and approves major projects.
- **Interest (1–5):** 2 — Interested in margin outcomes, not in the internal tooling.
- **Sponsor status:** Neutral
- **Source:** Human-provided (confidence: high)

### Globant team (Magdalena Viglione Lara, Raj Chejara and others)
- **Title / Role:** Discovery and delivery
- **Org unit:** Globant
- **Category:** Influencer
- **Influence (1–5):** 3 — Shapes the solution; approvals sit with Mawsons.
- **Interest (1–5):** 5 — Accountable for the discovery output.
- **Sponsor status:** Sponsor
- **Source:** Human-provided (confidence: high)

## Relationships
- Steven Eeles → Rod: access conduit. Rod avoids direct interviews (source: 8 Oct meeting notes).
- Damian Cherry → Rod: takes over some of his responsibilities (formal split unconfirmed).
- Coordinators → Technical team: route RFQs and receive mix codes.
- Coordinators → Rod: Rod does the pricing and the second check on their costing sheets.
- Rod ↔ Accounts: cross-checks uploaded rates against quotes; initiates credit requests after supplier mismatches.
- Managers → Adbri: major projects follow a delegated authority framework that includes Adbri sign-off.
- ICL → Adbri: ICL is Adbri-owned; quotes about $200/t and invoices at a different rate.
- Daryl → Globant team: approval gate for API access to Command QC.
- IT ↔ Accounts: possible role in loading rates (unconfirmed).

## RACI Matrix

Columns: Stv = Steven Eeles, Rod, Dmn = Damian Cherry, Crd = coordinators, Mgr = plant/regional/ops managers, Acc = Accounts, Tch = Technical, IT, Dry = Daryl, Adb = Adbri, Glb = Globant team.

| Activity | Description | Stv | Rod | Dmn | Crd | Mgr | Acc | Tch | IT | Dry | Adb | Glb | Accountable — justification |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Capture Rod's tacit knowledge | Extract his undocumented checks before 31 Oct | A | R | R | I | I | C | C | — | — | — | R | Steven controls access to Rod and the 31 Oct deadline. |
| Name step 12 owner | Decide who enters accepted pricing and recipe into Command from 1 Nov | C | C | R | I | A | C | — | — | — | — | I | Regional or ops managers own process responsibilities across teams. |
| Approve Command QC API access | Authorise and provision API and security terms | I | — | — | — | I | — | — | R | A | — | C | Daryl is the named approver for API access. |
| Automate morning exception reports | Build the three Reporting Services checks | I | C | C | I | I | C | — | C | — | — | A | Globant carries the build, and no Mawsons owner has been named. |
| Build plant-capability matrix | Capture silos, stock and capacity per plant | C | R | — | I | R | — | A | — | — | — | C | Technical is expected to get feasibility right, with Rod as backstop. |
| Quote expiry and price-increase alerts | Replace memory tracking with automated alerts | I | C | A | R | I | — | — | C | — | — | R | Damian is the likely continuity owner for Rod's tracking duties. |
| Margin rule and sign-off | Define how margin is set and flagged vs the 20–22% target | C | C | — | R | A | — | — | — | — | C | C | Managers set margin and give final sign-off today. |
| Validate as-is process map | Confirm the 16-step swimlane and mark assumed items | A | C | C | I | C | C | C | — | — | — | R | Steven is the client reviewer for the discovery documents. |

The Accountable assignments are assumptions for Steven to confirm.

## Stakeholder Profiles

**Steven Eeles**
- **Goals:** Keep pricing accurate through Rod's departure.
- **Concerns:** Time pressure and lost knowledge.
- **Success:** Every step has an owner and quotes stay accurate.

**Rod**
- **Goals:** Leave the process in good hands.
- **Concerns:** Direct interviews, which he avoids.
- **Success:** His checks run without him and he can validate results in January.

**Damian Cherry**
- **Goals:** Continuity after Rod leaves.
- **Concerns:** Unknown.
- **Success:** Steps he inherits are documented.

**Coordinators**
- **Goals:** Price quotes correctly from day one.
- **Concerns:** Not yet briefed on Rod's checks.
- **Success:** Fewer manual re-keys and fewer errors.

**Managers**
- **Goals:** Margin at the 20–22% target with no surprises.
- **Concerns:** Unknown.
- **Success:** Accurate quotes and reliable sign-off.

**Accounts**
- **Goals:** Invoices match quotes and dockets.
- **Concerns:** Late discovery of supplier mismatches.
- **Success:** Mismatches are flagged before payment.

**Technical team**
- **Goals:** Mixes that plants can supply.
- **Concerns:** Unknown.
- **Success:** Infeasible mixes are caught before costing.

IT, Daryl and Adbri: insufficient information for profiles. IT and Daryl need conversations. Adbri's interest is margin and approvals. Globant's role is discovery and delivery.

## Communication Plan
- **Steven Eeles:** weekly, short call or email. Owner: Globant. Messages: P1 questions answered, Rod's knowledge captured, assumptions to validate. Next action: confirm the assumed success criteria and Accountable owners.
- **Rod (via Steven):** short voice notes, not formal interviews. Owner: Steven. Message: "What do you check, and what would you tell a new coordinator?" Next action: send the P1 list.
- **Damian Cherry:** twice a week until 31 Oct. Owner: Globant. Message: second source for the tacit steps. Next action: schedule a working session.
- **Coordinators:** onboarding in November. Owner: Damian, with Globant. Message: how the new alerts and checks work. Next action: involve them in testing.
- **Managers:** milestone updates. Owner: Steven. Message: margin flags and sign-off flow. Next action: validate the approval rules.
- **Accounts and Technical:** per workstream. Owner: Globant. Next action: validate the exception report logic and the plant-capability matrix.
- **IT and Daryl:** on request. Owner: Globant. Message: API access needs and security terms. Next action: start the access request now.
- **Adbri:** through Steven, only on major-project approvals.

## Content Pack
Not applicable: web search was not authorised, and the stakeholders are internal people at a private company.

## Sources
- Mawsons_Process_Understanding_share.html, v0.2, 13 October 2026.
- Mawsons_Ops_Prototype.html.
- RODBOT_Project_Brief_and_Scope_Handoff.md, 20 October 2026.
