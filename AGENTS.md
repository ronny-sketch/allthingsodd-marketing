# Working in this repo

Read this first, whichever assistant you are. `CLAUDE.md` symlinks here.

## What this repo is

Marketing intelligence and strategy for **ODD** (Helsinki) — a creative-and-cultural
platform run by the non-profit **New Nordic Way rf**, comprising **ODDfest** (festival),
**ODDference** (conference), **ODDspace** (physical space, Sturenportti 3) and
**ODDagency**. The website is **All Things ODD**, at `allthingsodd.co`.

## The three rules

**1. `intel/` is evidence. `strategy/` is argument. Never blur them.**
Every claim in `intel/` carries a label — `MEASURED`, `OBSERVED`, `ARCHIVED`,
`REPORTED`, `INFERRED` — defined in [`docs/method.md`](docs/method.md). Every
recommendation in `strategy/` names the intel file it rests on. If you cannot cite
one, say you are speculating.

**2. Do not invent numbers.** This repo exists because the previous version of this
work was recollection dressed as research. A missing number is written as
`UNRESOLVED` or "not measured". Never estimate a follower count, an open rate or an
audience size and let it read as measured. If a capture failed, record that it failed.

**3. Check `DECISIONS.md` before writing anything in `strategy/`.** D1 — what
"All Things ODD" actually names — is open and blocks most naming questions. If you
write around an open decision, say which way you assumed.

## Layout

```
DECISIONS.md            open + settled decisions. Read before strategy work.
docs/method.md          evidence standard + capture techniques that work
docs/roadmap.md         research order, by dependency
intel/self/             ODD's own channels, measured
intel/benchmarks/       primary-source teardowns of comparable orgs
strategy/               the argument, traceable to intel/
data/raw/               captures. CSVs with a provenance header.
scripts/                capture scripts (see docs/method.md for rate limits)
```

## Context you will need that isn't in this repo

- **The website repo:** [`ronny-sketch/allthingsodd`](https://github.com/ronny-sketch/allthingsodd).
  Its `docs/IDENTITY_LAUNCH_MATRIX_2026-09-04.md` holds the shipped naming contract
  and the numbered blockers (B8–B19) referenced throughout this repo.
- **`ronny-sketch/odd-growth-os`** (private): the data layer — Attio, Beehiiv, GA4,
  Search Console pipelines. Source of the newsletter numbers. **Has no social pipeline**,
  which is why social history is unmeasured.
- **Ronny's knowledge base** (local, not public): `~/knowledge-base/wiki/`. Holds the
  Buildspace teardown, the social kits, people pages and the GTD open-loops file.

## Constraints that should shape any recommendation

- **No budget, no content hire.** Anything requiring weekly production from a person
  who does not exist will not happen. Say so rather than writing it anyway.
- **ODDfest 2027 has a September 2026 gate:** 30 tickets minimum or wind down.
- **~€260K gap.** Near-term revenue beats brand-building.
- **No website analytics.** GA4 and Search Console both return zero records.
- **Ronny's attention is the scarcest input.** Plans that spend it freely are wrong.

## Voice

Outward-facing copy for ODD or Ronny should be direct, short-sentenced and specific —
no marketing throat-clearing. There is a full voice guide at
`~/knowledge-base` (the `odd-voice` skill) and brand guidelines at
`~/Desktop/AI/apps/odd-brand-guidelines/`. If you are writing copy without access to
those, keep sentences short and cut anything that sounds like a press release.

## Note on visibility

This repo is **public** so it can be worked on from multiple tools. It contains no
credentials. It does contain ODD's real performance numbers and internal
strategic reasoning — treat that as deliberate, but do not add anything new that
should not be world-readable.
