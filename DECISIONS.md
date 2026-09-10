# Decisions

Open decisions first, settled ones below. Nothing in `strategy/` may assume an
answer to an open decision without saying which way it assumed.

---

## D1 — What "All Things ODD" actually names — OPEN, and blocking

**This is the decision everything else waits on.**

There is a live contradiction between what the website repo has already shipped and
what the launch brief says.

**What the repo says** (`allthingsodd/docs/IDENTITY_LAUNCH_MATRIX_2026-09-04.md`,
the naming contract, shipped and enforced in CI):

> "All Things ODD" names the **website**. It is not a rebrand and it does not
> replace `ODD` anywhere in editorial copy. The phrase appears in the site's own
> identity surfaces (`og:site_name`, the WebSite JSON-LD entity, the homepage
> `<title>`, the repo, the package) and essentially nowhere else. Product pages
> still lead with their product name.
>
> | Masterbrand | **ODD** — unchanged |
> | Products | **ODDfest, ODDference, ODDspace, ODDagency** — unchanged |

**What the launch brief says** (2026-09-10): rebrand all platforms on the new *roof
brand* All Things ODD.

Those are different decisions. The first makes All Things ODD a website title over
an unchanged ODD masterbrand. The second makes it a fourth naming layer above ODD,
which then sits above the products. `scripts/check-identity.mjs` currently **fails
the build** if the retired name leaks; there is no equivalent guard protecting the
distinction between "ODD" and "All Things ODD", because until now they were not
supposed to compete.

### What the benchmarks say

Every Tier 1 structural twin has faced this and resolved it the same way — the
**roof entity stays invisible to the audience**:

| Org | Legal / roof entity | What the audience sees |
|---|---|---|
| Sónar | Advanced Music S.L. | Sónar, Sónar by Day/Night, Sónar+D, OFFSónar, SónarKids |
| Nuits Sonores | Arty Farty (association loi 1901) | Nuits Sonores, European Lab, Le Sucre, H7 |
| Horst | Horst vzw | Horst — Festival, Club, Atelier |
| ODD | New Nordic Way rf | ODDfest, ODDference, ODDspace, ODDagency |

**ODD already has the winning structure.** `ODD` + product suffixes is exactly the
Sónar pattern, and it is doing the job a roof brand is supposed to do. The entity
that is invisible is New Nordic Way rf — correctly.

Arty Farty is the one partial exception and it is instructive: 19,479 LinkedIn
followers on the roof brand versus a much larger Instagram audience on Nuits
Sonores (101K). The roof brand carries the *institutional* channel. It does not
carry the culture channel.

And Slush is the direct warning: it launched two named sub-brands off its main
brand — Soaked by Slush and Node by Slush — and **both are 404 today**, folded back
into an unbranded newsletter and a plain `/newsroom`. At 110K LinkedIn followers and
1,500 volunteers. See [`intel/benchmarks/slush.md`](intel/benchmarks/slush.md).

### The options

| | Option | What it means | Cost |
|---|---|---|---|
| **A** | **All Things ODD = the website only.** Keep the shipped naming contract. ODD stays the masterbrand everywhere. Social handles migrate toward `ODD`, not `All Things ODD`. | Nothing to undo. Matches every Tier 1 benchmark. The website name becomes a wayfinding phrase, like "slush.org". | Loses the emotional appeal of a launch moment with a new name. |
| **B** | **All Things ODD = the roof brand.** A real fourth layer. New handles, new newsletter identity, new podcast identity, all under All Things ODD. | Rewrites the shipped identity contract, the CI guard, and the JSON-LD entity graph. Costs the existing 3,341 LinkedIn followers and the Instagram audience if it means new accounts. Adds a naming layer that no benchmark of ODD's size sustains. | High, and largely irreversible on social. |
| **C** | **Hybrid.** ODD stays the spoken masterbrand; All Things ODD is the *platform* name used for owned media only — the site, the newsletter, the podcast — while events stay ODDfest/ODDference/ODDspace. | Gives the launch a name without touching the product brands. Closest to what Slush actually does now (`slush.org` + unbranded newsletter). | Requires discipline about where the phrase is allowed. Slush tried a version of this with Soaked and abandoned it. |

**Recommendation: A, with C's website framing.** The strategy work should be allowed
to argue against this, but it should have to argue.

**Owner:** Ronny. **Blocks:** all of `strategy/`, the social handle decision (D2),
the newsletter re-domain (D3), the podcast name (D4).

---

## D2 — Social account architecture — OPEN, blocked by D1

Inherited from the website repo as `BLOCKED — HUMAN DECISION (B14)`:

> "Whether ODD wants its own masterbrand accounts is a human decision."

Current state (`OBSERVED`, 2026-09-10):

| Channel | Handle | Size |
|---|---|---|
| Instagram | `@oddfest.fi` | pending capture |
| Instagram | `@oddspace.co` | 510 followers |
| LinkedIn | `linkedin.com/company/oddfest` | **3,341 followers** |
| TikTok | `@oddfest` | not yet measured |
| YouTube | `@oddfest` | not yet measured |
| Facebook | `oddfest.fi` | not yet measured |
| Discord | `discord.gg/ZXtkM6FjBw` | not yet measured |

**Every masterbrand-level channel is currently named after one product.** That is the
real problem, and it is true regardless of how D1 resolves: `@oddfest` is being asked
to speak for ODDspace, ODDference and ODDagency.

Note the benchmark split before deciding: Horst has 109K on Instagram and **63
followers on LinkedIn**. Arty Farty has 19,479 on LinkedIn. These are not the same
channel doing the same job. Whatever we decide, LinkedIn and Instagram should not
get the same answer.

**Do not create new accounts before D1 closes.** Renaming a handle keeps the
audience; creating a new one starts at zero.

---

## D3 — Newsletter identity — OPEN, blocked by D1

`oddfest.beehiiv.com`, publication name `ODDletters`, organisation `Ronny's Hiiv`.
Flagged in the website repo as `BLOCKED — EXTERNAL CREDENTIAL (B15)`.

The list is 1,514 active and acquiring 4.5 people a month. It cannot afford a
migration that loses subscribers. See [`intel/self/newsletter-audit.md`](intel/self/newsletter-audit.md).

Separate and more urgent: **where the August 2025 import came from and whether those
1,589 people consented to a newsletter.** That is a GDPR question and it should be
answered before the re-open send, not after.

---

## D4 — Podcast — OPEN, not yet researched

No concept, no name, no format, no host commitment recorded anywhere. Blocked by D1
for naming; blocked by nothing for format research.

Prior art to weigh: Slush's podcast survived; the media brand it launched under did
not.

---

## Settled

### S1 — `allthingsodd.co` is the canonical domain
Shipped 2026-09-04, verified. `oddfest.co` and `oddspace.co` still serve their own
sites and are pending redirect (`B17`/`B18`, external credentials).

### S2 — `ODD Field Guide` is retired
Enforced by `scripts/check-identity.mjs` in CI.

---

## Known blockers inherited from the website repo

Carried here because they gate marketing work, not just engineering.

| ID | Blocker | Marketing consequence |
|---|---|---|
| B12 | `SURGE_TOKEN` is domain-scoped; CI deploy fails | **Production can silently lag `main`.** Verify the live site before announcing anything. |
| B13 | `allthingsodd.co` has no MX record — every `@allthingsodd.co` address bounces | Cannot put an All Things ODD email address on any campaign. |
| B15 | Beehiiv publication still on `oddfest.beehiiv.com` | See D3. |
| B16 | GA4 stream labelled `ODDpage`; Search Console property unconfirmed | **GA4 acquisition and Search Console are both returning zero records.** We are flying blind on web traffic — see `intel/self/`. |
| B17/B18 | `oddfest.co` / `oddspace.co` not redirecting | Audience arriving on old domains sees old sites. |
| B8 | Behold Instagram feed unset | The site's Instagram section does not render at all. |
| B11 | Web3Forms key empty | The contact form is not connected. |
