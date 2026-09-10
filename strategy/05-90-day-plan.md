# The first 90 days

September → November 2026. Ordered by dependency, not by preference.

**The context that makes this urgent:** ODDfest 2027 is under a September 2026 launch
gate — 30 tickets minimum or wind down. There is a ~€260K gap. October is the big
grant window. This is not a brand-building quarter.

---

## Week 1 — stop the bleeding

Five things, all small, none needing a decision from anyone but Ronny.

| # | Do | Why | Time |
|---|---|---|---|
| 1 | **Fix the Instagram link on the site** — `@oddfest.fi` → `@oddfest.co` | Every visitor sent to Instagram since the 2026-09-04 launch hit an error page. | 10 min |
| 2 | **Fix the Facebook link** — the site points at `facebook.com/oddfest.fi`; the real page is `profile.php?id=61572538992011` | Same commit. | 5 min |
| 3 | **Remove the TikTok link** | It does not resolve under any handle we can find. | 5 min |
| 4 | **Pick one Discord invite** — `ZXtkM6FjBw` (site) or `PM6UY9tbjy` (zaap.bio) | Two are in circulation. | 10 min |
| 5 | **Add UTMs to every outbound link** | 92% of subscribers are "direct". Without this the whole quarter is unmeasurable. | 1 hour |

Also this week, and blocking much more than it looks:

| # | Do | Why |
|---|---|---|
| 6 | **Fix GA4 + Search Console** (blocker B16) | Both return zero records. Nothing below can be measured until this is done. |
| 7 | **Fix `SURGE_TOKEN`** (blocker B12) | CI deploy fails, so production can silently lag `main`. Never announce a page without checking it is live. |
| 8 | **Decide D1** | Blocks naming, handles, the newsletter identity and the podcast. See [`../DECISIONS.md`](../DECISIONS.md). |

## Weeks 2–3 — the money that is one email away

| # | Do | Target |
|---|---|---|
| 9 | **Segment the list** into `participant` / `member` / `delegate` / `partner` / `curious`, backfilled from ticket, membership and ODDference records | 1,514 tagged |
| 10 | **Establish the consent basis for the August 2025 import** (1,589 people) | Answered before send |
| 11 | **Send the re-open email** — segmented, five versions, shape in [`03-newsletter-plan.md`](03-newsletter-plan.md) §2 | Open rate ≥55% |
| 12 | **ODDference 2027 early access to the 267** | **50 pre-buys × €350 = €17,500** |
| 13 | **The 30-ticket gate** — Ronny's personal LinkedIn and Instagram, in the register that has actually worked | 30 tickets, honestly counted |

**Item 12 is the highest-value thing in this document.** It is a known audience, a
known price, an existing product, and an already-open loop.

## Weeks 4–8 — October is the grant window

Taike Festival Grants and the SKR national round both run **1–30.10.2026**.

| # | Do | Why |
|---|---|---|
| 14 | **Turn the 2025 Impact Report into marketing, not reporting** | Slush treats research output as a content category; ODD treats it as compliance. The tool and the report already exist. |
| 15 | **Publish the newsletter archive on `allthingsodd.co`** as indexable pages | 15 web views/issue. There is currently no searchable body of ODD writing on the open web — a real problem for a funder doing due diligence. |
| 16 | **Partner-facing LinkedIn from Ronny**, weekly: named precedents, real numbers, what a partnership produced | The Partner audience lives here and is served by nothing right now. |

## Weeks 4–12 — install the Room Loop

Run it on **one room type only** — the weekly ODDspace event — for four weeks before
extending it. Full procedure: [`04-room-loop.md`](04-room-loop.md).

| # | Do |
|---|---|
| 17 | Print one QR code per room type; pre-set the segment in the URL |
| 18 | One artifact per event — a named person, 30–60 seconds, phone |
| 19 | Post in order: the person → a team member → the brand account → the newsletter |
| 20 | Count capture rate: people in the room ÷ people who joined the list |

| # | Do | Why |
|---|---|---|
| 21 | **Run "comment ODD → DM the link" once** on `@oddfest.co` | Buildspace measured 14× on comments. Instagram has produced 4 subscribers ever; almost anything beats it. |
| 22 | **Re-send the existing social kits** to speakers, artists and members | Built for 2026, sitting in `wiki/projects/social-kits/`. Distribution was the weak link, not creation. |
| 23 | **Capture the remaining 228 Instagram posts** with a logged-in session | The last large intel gap. Ronny can unlock it in a minute. |

## Explicitly not this quarter

| Not doing | Why |
|---|---|
| **Launching a podcast** | Undertow already exists — pilot done, three guests, seven in the pipeline, deck built, undistributed. Starting a second interview format before shipping the first is the mistake. |
| **Opening TikTok** | No owner. Five channels are already under-used. |
| **Re-domaining the newsletter** | The list cannot absorb subscriber loss at 4.5 signups/month. |
| **New brand identity work** | The brand guideline suite already exists and is unused. |
| **Paid acquisition** | No budget, no analytics, no measurable landing page. |

## The scoreboard

Reviewed monthly. Four numbers.

| Metric | Baseline 2026-09-10 | 90-day target |
|---|---|---|
| Newsletter, active | **1,514** | 1,600+ *(and rising, not falling)* |
| Signups/month | **4.5** | 40+ |
| Attribution: % `direct` | **92.1%** | <50% |
| **Capture rate** (room → list) | **unmeasured** | measured, then >40% |

Plus the two that decide whether any of this continues:

| | |
|---|---|
| **ODDfest 2027 tickets** | 30 = the gate |
| **ODDference pre-buys** | 50 × €350 = €17,500 |

## If the gate fails

Say it now rather than discovering it in October. If ODDfest 2027 does not clear 30
tickets, the centre of gravity moves to **ODDspace** (recurring membership revenue,
weekly rooms, the Room Loop still works) and **ODDagency** (project revenue). The
marketing logic survives that; the calendar does not. This plan should be re-pointed,
not edited.
