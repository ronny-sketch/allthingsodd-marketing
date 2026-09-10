# Research roadmap

Ordered by what unblocks the most. Not a schedule — a dependency order.

## Phase 0 — unblock (this week)

Nothing else is worth doing until these are true.

| # | Task | Why it's first | Owner |
|---|---|---|---|
| 0.1 | **Close D1** — is All Things ODD the website, the roof brand, or the owned-media platform? | Blocks every naming decision, every handle, the newsletter, the podcast, and all of `strategy/`. | Ronny |
| 0.2 | **Fix GA4 + Search Console** (blocker B16) | Both return zero records. Every campaign we run before this is unmeasurable. | Ronny (console access) |
| 0.3 | **Answer the TikTok question** | The production site links to a handle that does not resolve. | Whoever holds the credentials |
| 0.4 | **UTM every outbound link** before any launch post | 92% of newsletter signups are attributed "direct". Relaunching without this repeats the last two years. | — |
| 0.5 | **Establish where the Aug 2025 import came from** and whether those 1,589 people consented to email | GDPR before growth. Blocks the newsletter re-open send. | Ronny |
| 0.6 | **Fix `SURGE_TOKEN`** (blocker B12) | CI deploy is failing, so production can silently lag `main`. Do not announce a page without checking it is live. | Ronny |

## Phase 1 — finish the self-audit

We are analysing ODD's history with one channel measured.

| # | Task | Note |
|---|---|---|
| 1.1 | **Instagram post-level capture for `@oddfest.fi`** | The largest gap in the repo. Use the embed-iframe technique from the Buildspace teardown (`/p/<code>/embed/captioned/`, same-origin read). Instagram IP-rate-limited this session — retry with backoff, and expect this to take a while. |
| 1.2 | **LinkedIn post-level capture for `company/oddfest`** | 3,341 followers and no performance history. |
| 1.3 | **Ronny's personal LinkedIn, same treatment** | The 533-reaction post suggests the personal account is the real channel. Establish whether that is one outlier or a pattern. |
| 1.4 | **Website audit** | Once GA4 works. Until then, a structural audit of `allthingsodd.co` against the benchmarks. |
| 1.5 | **Add a social pipeline to `odd-growth-os`** | It has Attio, Beehiiv, GA4, Search Console, Notion, Calendar, Gmail, Drive — and nothing social. Make 1.1–1.3 repeatable instead of one-off. |
| 1.6 | **Retro on ODDfest 2026's actual campaign** | The social kits, the raffle, the influencer track, the team-video brief all exist in `wiki/projects/social-kits/`. What ran, and what happened? |

## Phase 2 — the benchmark teardowns

Priority order, per [`intel/benchmarks/00-benchmark-set.md`](../intel/benchmarks/00-benchmark-set.md):

1. **Arty Farty / Nuits Sonores / European Lab** — the closest structural twin
2. **Horst** — the festival-that-took-a-building
3. **Sónar / Sónar+D** — the brand-architecture answer
4. **Slush** — verify and deepen the first pass; the Soaked/Node post-mortem is
   worth a direct conversation, not just a crawl
5. Tier 2 mechanics — one question each, not full teardowns

Each follows `docs/method.md`: primary sources, labelled claims, an adversarial pass,
a corrections section, and an explicit "still missing".

## Phase 3 — strategy

Only after 1 and 2. Written so each recommendation names the intel file it comes from.

- `strategy/positioning.md` — what ODD is, in one paragraph anyone in the team can repeat
- `strategy/channel-architecture.md` — which brand speaks where; resolves D2
- `strategy/content-system.md` — formats, cadence, who makes what
- `strategy/newsletter.md` — including the re-open send, which is the highest-stakes email in the plan
- `strategy/podcast.md` — resolves D4
- `strategy/calendar.md` — mapped to the real 2027 gates
- `strategy/measurement.md` — what we actually track, and the honest baseline we start from

## Standing constraint

The 2026-08-24 memory note on ODDfest: **September 2026 launch gate, 30 tickets
minimum or wind down.** Any marketing plan that assumes ODDfest 2027 exists needs to
say what it does if that gate is not met. That is a strategy question, not a research
one, but it should not be discovered late.
