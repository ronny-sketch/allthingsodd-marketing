# Slush — teardown (first pass)

**Status:** first pass. Verified where labelled; not yet adversarially reviewed.
**Why this benchmark:** same city, same ecosystem, same funding bodies, same
volunteer-labour model — and Slush has already built and then **killed** the exact
two things ODD is about to build.

---

## 1. The finding that should change ODD's plan

Slush built two named sub-brands off the main brand:

- **Soaked by Slush** — a startup media platform, launched 2019
- **Node by Slush** — a startup and investor community, launched 2020

Both are dead.

| URL | Status, checked 2026-09-10 | Label |
|---|---|---|
| `https://www.slush.org/soaked/` | **404** | `OBSERVED` |
| `https://slush.org/soaked` | **404** | `OBSERVED` |
| `https://node.slush.org/` | **404** | `OBSERVED` |

Wayback holds `node.slush.org` live from 2020-10 through at least 2023-01, and
`slush.org/soaked` from 2019-11 through at least 2021-01 (`ARCHIVED`, CDX index).

What replaced them: an **unbranded newsletter** and a **plain `/newsroom`**, both
under the Slush name (`OBSERVED`, 2026-09-10).

Slush has roughly 110,958 LinkedIn followers, 31K on Instagram, ~1,500 volunteers,
and a 70,000-person mailing list it was already citing in 2020 (`OBSERVED` /
`ARCHIVED`). **It could not sustain two sub-brands at that scale.** ODD is proposing
to launch a newsletter and a podcast under a *third* naming layer with a 1,514-person
list and no full-time content hire.

This is the single most important thing in the benchmark set so far, and it points
directly at the open brand-architecture decision. See `DECISIONS.md` D1.

## 2. What Soaked actually was, while it lived

From the 2020-04-12 capture (`ARCHIVED`, `web.archive.org/web/20200412005813`):

> "You are resting your eyes on a brand new startup media called Soaked by Slush.
> **Always free, never boring, surprising at times.** We are all about hyper-concrete
> stories on building companies, fresh takes on European tech, and data-driven
> observations about the world around us. Be an early adopter and sign up for our
> monthly newsletter."

Three things worth taking, independent of the sub-brand mistake:

**It called itself media, not a newsletter.** The newsletter was the *subscription
mechanism* for a publication, not the product. ODD currently has the reverse: a
newsletter with no publication behind it, and no web presence at all
(median 15 web views per issue — see [[../self/newsletter-audit]]).

**The podcast was interleaved, not siloed.** The 2020 front page runs podcast
episodes and written articles in a single stream, tagged by type — `Podcast`,
`Leadership`, `Product building`, `Finance`, `Talent`, `Branding`, `Guest writer`,
`By Slush Research`. There was no separate podcast section to maintain. For a team
of ODD's size that is the difference between a podcast that ships and one that
doesn't.

**Categories were jobs, not topics.** `Talent`, `Finance`, `Product building`,
`Leadership` — every tag names something the reader is trying to *do*. Compare
ODDletters' best-clicking sends: "Everything You Need to Know" (9.46%) and
"New Ways to Get Involved" (8.41%). Same principle, arrived at accidentally.

**Cadence was monthly.** For a media brand with a full editorial team. ODD should
read that number carefully before committing to weekly anything.

## 3. What Slush does now

`OBSERVED`, 2026-09-10, `slush.org/newsroom`:

- Newsletter signup is **unbranded** — "Sign up for our newsletter" — and
  **segments on signup into Startup / Investor / Media / Other.**
- Content is tagged by audience-facing category: People, Partners, Research,
  Funding, Leadership, Finance & Legal, Marketing, Operations, Volunteers.
- Primary navigation is **split by who you are** (Speakers, Startups, Investors,
  LPs, Partners, Media, Volunteers) rather than by what the content is.
- Research reports are a first-class content type — Startup Impact Report, Finnish
  Founder Survey, Startup Struggle Survey.
- `Slush 365` is the surviving year-round property, folded into the main navigation
  rather than given its own domain.

The segmentation-at-signup point is directly actionable and currently free: ODDletters
has 1,514 active subscribers and **no segmentation whatsoever**, so every send goes
to artists, ODDspace members, ODDference delegates, partners and ticket-buyers
identically.

Research-as-content is also worth noting against ODD's hand: ODD has an Impact Report
tool already built and an actual 2025 Impact Report. Slush treats that category of
output as marketing. ODD treats it as reporting.

---

## Corrections

Nothing yet — first pass. To be filled by the verification pass.

## Still missing

- **Why Soaked and Node were retired.** The 404s are established; the reason is not.
  Worth asking directly — this is a Helsinki organisation and the people are
  reachable. An honest answer from someone who ran it is worth more than the rest
  of this file.
- **Whether Soaked's newsletter list was merged into the main Slush list or lost.**
  That is the exact risk ODD faces if ODDletters gets re-domained (blocked item B15
  in the website repo).
- **Slush's actual email cadence and open rates.** Not observable from outside.
- **Soaked's article-level performance.** Wayback was intermittently offline during
  this session; a fuller crawl of `slush.org/soaked/*` is still owed.

---

*Sources: [slush.org/newsroom](https://slush.org/newsroom),
[slush.org](https://slush.org/), Wayback captures of `slush.org/soaked` and
`node.slush.org`, [Slush on Wikipedia](https://en.wikipedia.org/wiki/Slush_(event)).*
