# Method and evidence standard

## Why this exists

The failure mode for a marketing strategy document is that it reads like research
and is actually recollection. This repo exists to make that impossible to do by
accident: every claim in `strategy/` has to trace to a file in `intel/`, and every
claim in `intel/` has to trace to a primary source that someone else can re-open.

## The standard

Every factual claim carries one of these, and the claim is written so the label is
checkable:

| Label | Means |
|---|---|
| `MEASURED` | Recomputed from a data file in `data/` or a named export. The file path is given. |
| `OBSERVED` | Read directly off the live thing — a page, a profile, an account — on a stated date. |
| `ARCHIVED` | Read off a Wayback / cached capture. The capture timestamp is given, because these decay. |
| `REPORTED` | A third party said it. The source is linked, and it is not treated as fact. |
| `INFERRED` | Our reasoning on top of the above. Always marked, never blended into a MEASURED claim. |

Anything unlabelled is a claim in progress and should be treated as unverified.

## Rules that came out of the Buildspace teardown

That teardown (`~/knowledge-base/wiki/projects/school-of-odd/buildspace-marketing-teardown.md`)
is the quality bar for this repo. Three rules from it carry over:

1. **Run an adversarial pass.** On that teardown, of 89 claims, 38 survived, 49 were
   narrowed, and 2 were thrown out. Assume roughly half of a first draft is
   overstated and go find which half.
2. **Record the corrections.** A `## Corrections` section at the bottom of each
   teardown, including corrections to our own earlier drafts. Wrong numbers
   propagate silently otherwise.
3. **Say what is still missing.** Every teardown ends with what could not be
   captured, so the gap is visible rather than papered over.

## Capture techniques that work

Held here so the next pass doesn't rediscover them.

| Target | Technique | Notes |
|---|---|---|
| Instagram profile stats | `og:description` meta on `instagram.com/<handle>/` carries `N Followers, N Following, N Posts` | `scripts/ig_profile.sh`. Instagram rate-limits bursts hard — the script sleeps 20s between handles and retries with backoff. A fast loop returns empty for every handle after the first few. |
| Instagram post captions + likes | `/p/<shortcode>/embed/captioned/` still renders; loaded in an iframe from an `instagram.com` page it is same-origin and readable from `contentDocument` | From the Buildspace teardown. The post API itself is closed. |
| LinkedIn company followers | Logged-out `linkedin.com/company/<slug>/` includes a `N followers` string | `scripts/li_company.sh`. Works for some pages and not others; failures are recorded as `UNRESOLVED`, never guessed. |
| Site copy history | Wayback CDX API with `collapse=digest` returns only *distinct* versions; the `id_` suffix on a capture URL returns original HTML with no archive banner | Gives a copy-change timeline cheaply. |
| YouTube transcripts | `yt-dlp --write-auto-subs --extractor-args "youtube:player_client=ios" --ignore-no-formats-error` | Default player client is bot-blocked. |

**Known constraint, 2026-09-10:** the Internet Archive was intermittently returning
"Temporarily Offline" during this session. Wayback-dependent work is slower than
usual and some captures failed that would normally succeed; those are marked, not
silently dropped.

## What does not count

- Follower counts as a success measure on their own. They are recorded because they
  are cheap and comparable, not because they mean much.
- Anything an organisation says about its own strategy in an interview, without
  something observable behind it. That is `REPORTED`.
- Engagement-rate benchmarks from marketing blogs. Where an industry norm is cited,
  it is cited as a rough band and labelled `REPORTED`.
