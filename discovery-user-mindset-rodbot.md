# Discovery User Mindset: RODBOT (Mawsons quote & pricing automation)

## Output Header
- **Initiative:** RODBOT, Mawsons quote and pricing automation.
- **Date:** 2026-10-21.
- **Version:** 0 (draft). There are no interviews or analytics, so this stays a draft.
- **Sources:** Mawsons process document v0.2, the ops prototype, the Scope brief, the stakeholder map, and the current-solution CSV.
- **Coverage:** four user personas for the tools being built. Rod is treated as a knowledge source, not a user.
- **Tag meaning:** [E] means the process doc or another input states it. [A] means inferred.

## User Personas

### P1. The new quote coordinator
New from November, not yet briefed.
- **Goals:** price quotes correctly from day one [A].
- **Usage context:** at a desk, working in the costing workbook, Command QC and email [E, steps 4, 7 and 10]. Device mix is unknown [A].
- **Core tasks:** route RFQs, key the recipe into the costing sheet by hand, and upload the PDF [E].
- **Pain points:** manual re-keying [E]. Nobody has confirmed they've been briefed on Rod's checks [E, open question A3]. They can't see why a number looks wrong [A].
- **Proficiency:** unknown [A].
- **Accessibility:** no data [A].
- **KPI influence:** quote accuracy and turnaround time [A].
- **JTBD:** When an RFQ arrives, I want to build a correct costing sheet quickly, so I can send a quote that won't need rework [A].

### P2. The continuity owner
Based on Damian Cherry's role.
- **Goals:** keep Rod's duties running after he leaves [E].
- **Usage context:** across Command QC, Reporting Services and the costing workbook [A].
- **Core tasks:** inherits some of Rod's checks, such as the morning exception reports and expiry tracking [E, formal split unconfirmed].
- **Pain points:** undocumented rules, no cartage or margin formula, and no code map [E].
- **Proficiency:** unknown [A].
- **Accessibility:** no data [A].
- **KPI influence:** every step has a named owner [A, from the assumed success criteria].
- **JTBD:** When Rod is gone, I want clear, automated checks, so I can catch pricing errors without his memory [A].

### P3. The approving manager
Plant, regional or ops manager.
- **Goals:** hit the 20–22% margin target, and keep Adbri's expectations met [E].
- **Usage context:** reviews sheets, usually by email, and signs off major projects under a delegated authority framework [E, steps 8 and 9].
- **Core tasks:** review margin, volume and comparable quotes, then approve [E].
- **Pain points:** no rule for how margin is set, and notes added by hand [E].
- **Proficiency:** unknown [A]. They probably want a quick view, not a deep tool [A].
- **Accessibility:** no data [A].
- **KPI influence:** margin versus target [E].
- **JTBD:** When a quote reaches me, I want to see margin against target and comparable quotes, so I can approve with confidence [A].

### P4. The accounts processor
- **Goals:** invoices match quotes and dockets [E].
- **Usage context:** loads rates from supplier invoices and checks client invoices in Command QC and Reporting Services [E, steps 2 and 14].
- **Core tasks:** load rates, reconcile invoices, and request supplier credits after Rod flags a mismatch [E].
- **Pain points:** supplier mismatches found late, such as ICL quoted at about $200/t and invoiced at about $280/t [E]. The decision rule on mismatches is unknown [E, open question A5].
- **Proficiency:** unknown [A].
- **Accessibility:** no data [A].
- **KPI influence:** invoice accuracy and credits recovered [A].
- **JTBD:** When a supplier invoice arrives, I want a mismatch flagged before I pay, so I can avoid overpaying [A].

## Top Tasks (Cross-Persona)

| Task | Rationale | Primary personas | Tag |
|---|---|---|---|
| Run the morning exception checks | Strongest automation candidate | P2, P4 | [E] |
| Load rates and verify against quotes | Everything downstream depends on correct rates | P4, P2 | [E] |
| Enter accepted pricing into Command | Owner unknown; wrong or missing pricing breaks every invoice | P2, P1 | [E] |
| Check the plant can make the mix | Rod does it from memory today | P1 | [E] |
| Build the costing sheet | Manual keying and unknown formulas | P1 | [E] |
| Review margin and sign off | Margin is the main business control | P3 | [E] |
| Upload and send the quote with its expiry | Validity is tracked from memory | P1 | [E] |
| Track quote expiry and price increases | No system enforcement | P2, P1 | [E] |
| Reconcile client invoices against dockets | Credit requests depend on Rod | P4 | [E] |
| Translate quarry codes to concrete codes | No shared list exists | P1, P2 | [E] |

## Users Holistic Diagnostic
- **Cross-persona pattern:** four of the five riskiest tasks sit with whoever inherits Rod's work (P2). Data-checking tasks (rates, exceptions, invoices) cluster in P2 and P4.
- **Tension:** Steven says Rod avoids interviews [E], but Rod is the main source of the tacit rules. Do we automate his judgment or document it first?
- **Risks to validate:** how much the new coordinators and Damian trust automated checks [A], and whether managers want alerts or full automation [A].
- **Implications for IA and features:** an exception-report view first, a plant-capability check second, and a quote list with expiry and margin flags third. The prototype's Dashboard, Quotes, Exception Reports and Plant Matrix screens already follow this order [E].

## Adoption Risks and Enablers

**Barriers**
- Trust in automation replacing Rod's judgment [A].
- Stale costing data (7 of 8 plants dated 1 October 2023) [E].
- No interview access to Rod before he leaves [E].
- New coordinators are learning the process and the tool at once [A].
- Unknown devices and environments [E, open question D3].

**Enablers**
- Steven Eeles as the conduit and likely sponsor [A].
- A working prototype to react to [E].
- Rod returning in January to validate [E].
- Clear, pure data-alignment tasks [E].

**Mitigation**
- Show each alert with its source numbers, so users can see why it fired [A].
- Keep humans on margin sign-off, plant overrides and supplier disputes [E, working assumption D1].

## Assumptions and Evidence Register

| Persona | Attribute | Statement | Tag | Evidence / validation plan |
|---|---|---|---|---|
| P1 | Tasks | Routes RFQs, keys recipes, uploads the PDF | [E] | Process doc steps 4, 7, 10 |
| P1 | Briefing | New coordinators have not been briefed on Rod's checks | [E] | Open question A3; confirm with Steven |
| P1 | Device and proficiency | Works at a desk on spreadsheets and Command | [A] | Validate with Steven (D3) |
| P2 | Role | Takes on part of Rod's duties | [E] | 8 Oct meeting notes; confirm formal split (A4) |
| P2 | Tasks | Inherits exception checks and expiry tracking | [A] | Confirm with Damian |
| P3 | Tasks | Reviews margin and signs off | [E] | Process doc steps 8 and 9 |
| P3 | Preference | Wants a quick summary view, not a deep tool | [A] | Show prototype to a manager |
| P4 | Tasks | Loads rates and checks invoices | [E] | Process doc steps 2 and 14 |
| P4 | Pain | Learns of supplier mismatches after paying | [E] | Process doc step 14; confirm decision rule (A5) |
| All | Accessibility | No known needs | [A] | Ask Steven about needs, environments and shared devices |
| All | Trust | Users trust automated alerts if sources are shown | [A] | Usability session with the prototype |

## Data Gaps
- **Who exactly are the users:** names and counts for coordinators, managers and Accounts. Ask Steven.
- **Devices and environments (D3):** desk, tablet at the plant, or phone on the road?
- **Damian's real ownership (A4):** which steps does he own, and which does he assist with?
- **How Rod actually decides:** voice-note questions: "What do you check, and what would you tell a new coordinator?"
- **Accessibility and inclusion:** any needs or constraints at plants.
- **Trust test:** show the prototype's exception report to P2 and P4 and ask what would make them rely on it.
