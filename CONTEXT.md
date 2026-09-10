# Context — everything established so far

**Written 2026-09-10.** One place to load the whole picture before working on
anything here. If you are ChatGPT, another Claude session, or a person joining
this work, read this file, then [`DECISIONS.md`](DECISIONS.md), then
[`strategy/`](strategy/).

Numbers here are copied from the intel files. Where they conflict, the intel file
wins — it carries the provenance.

---

## 1. What ODD is

**ODD** is a creative-and-cultural platform in Helsinki, run by the non-profit
association **New Nordic Way rf**. It has four products:

| Product | What it is | State, Sept 2026 |
|---|---|---|
| **ODDfest** | The festival. 2026 edition ran 12–13 June. | Pivoting to "Creative Week" for 2027. **Under a September 2026 launch gate: 30 tickets minimum or wind down.** |
| **ODDference** | The conference alongside the festival. | 267 attendees in 2026. Early-access sales to those 267 is an open revenue loop. |
| **ODDspace** | A physical space at Sturenportti 3, 50/50 revenue split with YIT. | Live. 15 paying members. Runs weekly events. YIT lease verification is still an open blocker. |
| **ODDagency** | Commercial services arm. | Early. Pivoting toward vertical GTM work. |

The website is **All Things ODD**, at `allthingsodd.co`, launched 2026-09-04.

**Cumulative proof, as published on the homepage:** 5,000+ participants,
500+ collaborators, 100+ partners, €400K+ channelled directly into the creative and
cultural industries.

**Financial reality:** roughly a **€260K gap**. 187 paid tickets in 2026. This is a
survival phase, not a growth phase, and it should shape every recommendation.

## 2. The naming situation — read this before writing any copy

This is the most misunderstood thing in the project and it is decision **D1**.

The website repo shipped a formal naming contract on 2026-09-04, and it is
**enforced in CI** (`scripts/check-identity.mjs` fails the build on violations):

> "All Things ODD" names the **website**. It is not a rebrand and it does not
> replace `ODD` anywhere in editorial copy… Masterbrand: **ODD** — unchanged.
> Products: **ODDfest, ODDference, ODDspace, ODDagency** — unchanged.

The launch brief for this marketing work describes All Things ODD as a **roof brand**
to rebrand all platforms onto. **Those are two different decisions**, and D1 is open.

Do not write copy that assumes either answer without saying which you assumed.

## 3. Every number we have measured

### Owned channels

| Channel | Handle | Size | How we know |
|---|---|---|---|
| Newsletter — *ODDletters* | `oddfest.beehiiv.com` | **1,514 active** (1,897 total) | Beehiiv API export, 2026-08-31 |
| **Instagram** | **`@oddfest.co`** | **4,409 followers**, 240 posts | Chrome, 2026-09-10 |
| Instagram | `@ronnytheodd` (personal) | **3,626 followers**, 286 posts | Chrome, 2026-09-10 |
| LinkedIn | `company/oddfest` | **3,341 followers** | Logged-out page, 2026-09-10 |
| Instagram | `@oddspace.co` | **510** followers, 18 posts | og:description, 2026-09-10 |
| Instagram | `@oddfest.fi` | **does not exist** — but is what the live site links to | Chrome + fetch + curl, 2026-09-10 |
| Discord — *ODDones* | `discord.gg/ZXtkM6FjBw` | **315 members, 32 online** | Discord invite API, 2026-09-10 |
| YouTube | `@oddfest` | **24 subscribers, 12 videos** | Channel page, 2026-09-10 |
| TikTok | `@oddfest` | **does not resolve** | oEmbed, with working controls |
| Facebook | `oddfest.fi` | not measured | needs auth |
| Slack | All Things ODD workspace | connected 2026-09-10 | new; internal, not audience-facing |
| Website | `allthingsodd.co` | **no analytics data at all** | GA4 + Search Console both return `records: []` |

Ronny's **personal** LinkedIn carries ~10,000 followers and ~8,732 connections —
roughly 3× the ODDfest company page. His Instagram (3,626) is larger than that page too.

**Instagram is ODD's biggest owned audience**, ahead of LinkedIn and well ahead of the
newsletter — a correction to an earlier draft of this file.

### The newsletter, in detail

This is the only channel with a complete history. All figures recomputed from the
Beehiiv export, not read off a dashboard.

| | |
|---|---|
| Active subscribers | **1,514** of 1,897 (79.8%) |
| **Median open rate** | **60.9%** — industry norm is roughly 35–40% |
| Median click rate | ~6.2% |
| Sends ever | 20, between 2025-10-10 and 2026-06-22 |
| **Days silent** | **80** and counting |
| Recipients, first send → last | 1,693 → **1,460** (−13.8%, no replacement) |
| Open rate, first 10 sends → last 10 | 63.7% → **57.1%** |
| Median web views per issue | **15** |

**How the list was actually built:**

| Month | Signups | Still active |
|---|---|---|
| 2025-08 | **1,589** ← one import, 83.8% of the whole list | 1,268 |
| 2025-09 → 2026-02 | 221 | 164 |
| 2026-03 → 2026-08 | 77 | 72 |
| **Last two months** | **9** | 7 |

Organic acquisition is now **~4.5 signups/month**.

**Attribution is broken and social contributes nothing:**

| Source | Subscribers |
|---|---|
| direct (i.e. untagged) | **1,747 — 92.1%** |
| oddfest.co | 120 |
| zaap.bio | 12 |
| linkedin.com + linkedin.android | 11 |
| instagram.com | 4 |
| facebook.com | 1 |

**Instagram, LinkedIn and Facebook have produced 16 subscribers between them, ever** —
against 4,409 + 3,341 followers. This is a conversion and instrumentation failure,
not an audience failure.

**What people click** — this reverses the assumed hierarchy:

| Best | Click % | | Worst | Click % |
|---|---|---|---|---|
| Everything You Need to Know | **9.46** | | Second Wave of Lineup | 3.01 |
| Hello Again, We've Been Busy | 8.88 | | It's here, ODDfest starts today | 2.81 |
| Thank You | 8.56 | | First Lineup Drop | 2.07 |
| New Ways to Get Involved | 8.41 | | First Lineup Drop (duplicate send) | 2.00 |

**Lineup announcements are the worst-performing content ODD makes**, and four of
twenty sends were lineup drops. Opens stay high (54–64%) across both groups — people
open for the news and act on the usefulness.

**Two anomalies worth chasing:** a duplicate send on 2026-03-27 (the same email to two
near-identical segments an hour apart — the cause is still in the workflow), and the
December 2025 cohort, which retained **8 of 44** signups where every other month
retains 90–100%.

### One social data point, and it is a strong one

From `wiki/projects/social-kits/oddference-post-log.csv`:

| Post | Author | Reactions | Comments |
|---|---|---|---|
| "We made it. ODDfest 2025 happened — against all odds…" | **Ronny, personal** | **533** | **70** |
| "…imagine if Slush and Flow Festival had a love child" | Thomas McGinley, personal | 26 | 2 |

Logged at the time as "most viral ODDfest post to date. Vulnerability + triumph
formula." Nothing on the company page approaches it.

## 4. What the benchmarks established

### The brand-architecture answer is unanimous

Every structural twin keeps the **roof entity invisible** to the audience:

| Org | Roof / legal entity | What the audience sees |
|---|---|---|
| Sónar | Advanced Music S.L. | Sónar, Sónar by Day/Night, Sónar+D, OFFSónar, SónarKids |
| Nuits Sonores | Arty Farty (non-profit association) | Nuits Sonores, European Lab, Le Sucre, H7 |
| Horst | Horst vzw | Horst — Festival, Club, Atelier |
| **ODD** | **New Nordic Way rf** | **ODDfest, ODDference, ODDspace, ODDagency** |

ODD already has the Sónar pattern. `ODD` + product suffixes is doing the job.

### Slush built and killed exactly what ODD is proposing

| Property | Status, checked 2026-09-10 |
|---|---|
| `slush.org/soaked` — *Soaked by Slush*, a startup media brand launched 2019 | **404** |
| `node.slush.org` — *Node by Slush*, a community launched 2020 | **404** |

Replaced by an **unbranded newsletter** and a plain `/newsroom` under the Slush name.
Slush has ~110,958 LinkedIn followers, 31K on Instagram, 1,500 volunteers and a
70,000-person list. **It could not sustain two sub-brands.** ODD is proposing a
newsletter and a podcast under a third naming layer with 1,514 subscribers and no
content hire.

Worth taking from Soaked while it lived: it called itself **media, not a newsletter**;
it ran **podcast episodes and articles in one stream** rather than a separate podcast
section; its categories were **jobs, not topics** (Talent, Finance, Product building,
Leadership); and it ran **monthly**, with a full editorial team.

What Slush does now: newsletter signup **segments into Startup / Investor / Media /
Other**, navigation splits **by who you are**, and **research reports are a
first-class content type**.

### Channel choice follows audience type, not brand hierarchy

| Org | Instagram | LinkedIn |
|---|---|---|
| Horst | **109K** | **63** |
| Nuits Sonores | **101K** | — |
| Arty Farty (the roof brand) | — | **19,479** |
| Sónar | **331K** | — |
| Slush | 31K | **110,958** |
| Dekmantel | — | 4,047 |
| **ODDfest** | not captured | **3,341** |

A culture brand can win completely on Instagram and be absent from LinkedIn (Horst).
A B2B event inverts it (Slush). The institutional roof carries LinkedIn while the
culture brand carries Instagram (Arty Farty / Nuits Sonores). ODD is both, which is
the actual complication.

### Buildspace — the acquisition mechanics

From a completed 350-file primary-source teardown in Ronny's knowledge base
(`wiki/projects/school-of-odd/buildspace-marketing-teardown.md`):

| Mechanic | Measured effect |
|---|---|
| "Comment X → bot DMs the link" | 12 posts averaged **2,791 comments** vs 196 without — **14×** |
| Third-person stories about one participant | **13,162 likes** vs 5,287 — **2.5×** |
| Five short films (9.2 min total) vs 24 lectures (14.67 h) | **270,560 views** vs 135,652 |
| Removing the application gate | 500 → **30,000+** applicants |

Its caution matters as much: Buildspace's cadence assumed 188K followers, and its free
model was funded by $3–5M/yr of sponsorship. **Free was an outcome of that scale, not
a route to it.**

## 5. The four findings that drive the strategy

1. **ODD has a capture problem, not an awareness problem.** 5,000+ people have been
   in an ODD room; 1,514 are reachable; 84% of those came from one import. Three to
   four thousand people attended something ODD made and cannot be contacted again.
2. **The newsletter is the best asset and the most neglected.** 60.9% open, silent
   80 days, growing at 4.5/month.
3. **People outperform pages, by an order of magnitude.** 533 reactions on a personal
   post; Buildspace's 2.5× multiplier says the same thing independently.
4. **Utility beats programming.** ODD's own click data and Buildspace's engagement
   data agree: lead with a person and a next step, not a lineup.

## 6. Known broken things

Carried from the website repo's identity matrix. These gate marketing work.

| ID | Blocker | Marketing consequence |
|---|---|---|
| **B16** | GA4 stream still labelled `ODDpage`; Search Console property unconfirmed | **No website analytics at all.** Nothing we run can be measured. |
| **B12** | `SURGE_TOKEN` is domain-scoped, CI deploy fails | **Production can silently lag `main`.** Verify live before announcing. |
| **B13** | `allthingsodd.co` has no MX record | Every `@allthingsodd.co` address bounces. Cannot use one on a campaign. |
| **B15** | Newsletter still on `oddfest.beehiiv.com` | Re-domaining risks subscribers on a list that cannot afford it. |
| **B17/B18** | `oddfest.co` and `oddspace.co` still serve their own old sites | Audience on old domains sees old content. |
| **B8** | Behold feed unset | The site's Instagram section does not render. |
| **B11** | Web3Forms key empty | The contact form is not connected. |
| — | Site links to `tiktok.com/@oddfest`, which does not resolve | A dead outbound link on every page. |

## 7. Assets that already exist and are being under-used

Do not commission these again. They are built.

- **Social kits** (`wiki/projects/social-kits/`) — ODDference LinkedIn kit, ODDfest
  artist kit, a 3-variant Canva template kit, a raffle kit, a team video brief, a
  volunteer design guide. Built for 2026. Distribution was the weak link, not creation.
- **Brand guidelines** (`~/Desktop/AI/apps/odd-brand-guidelines/`) — a five-document
  suite: voice, representation, image delivery, visual identity, deck template.
- **Impact Report tool** — a working brand-agnostic impact-report generator, plus an
  actual 2025 Impact Report. Slush treats research output as marketing; ODD treats it
  as reporting.
- **Undertow** — a documentary interview series with Remu Shemeikka. Pilot done with
  three guests, seven in the pipeline, pitch deck built, **not yet distributed.**
- **`odd-growth-os`** — data pipelines for Attio, Beehiiv, GA4, Search Console,
  Notion, Calendar, Gmail, Drive. **No social pipeline**, which is why social history
  is unmeasured.
- **A weekly event cadence at ODDspace** — 32 events in a four-month calendar window.
  Currently producing no captured contacts and no content.

## 8. Constraints any recommendation has to survive

- **No budget and no content hire.** If it needs weekly production from a person who
  does not exist, it will not happen.
- **Ronny's attention is the scarcest input in the system.** He is also carrying
  ~8 open critical items in this domain alone, plus Hanken (20%), a personal income
  rebuild, and a PhD.
- **The September gate is a ticket count**, not a reach number.
- **October 2026 is the big grant window** — Taike Festival Grants and the SKR
  national round both run 1–30.10.
- **No analytics.** Only track things that count themselves.

## 9. What is still unknown

Named so nobody treats the gaps as settled.

- **228 of `@oddfest.co`'s 240 Instagram posts.** A logged-out profile shows 12.
  Needs an authenticated session — Ronny can unlock this in a minute.
- **Reach, saves, shares, follower growth over time.** Owner-only metrics.
- **Whether a TikTok account exists** under a handle other than the published one.
- **Facebook page size.**
- **Where the August 2025 import came from**, and whether those 1,589 people have a
  consent basis for email. This is a legal question as well as a marketing one and it
  gates the re-open send.
- **Why Slush retired Soaked and Node.** The 404s are established; the reason is not.
  These are reachable people in the same city — worth asking directly.
- **What actually ran in the ODDfest 2026 campaign, and what it produced.** The kits
  exist; the outcome was never written down.
