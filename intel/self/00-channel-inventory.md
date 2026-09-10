# ODD's owned channels — inventory

**Measured 2026-09-10** unless stated. Method and labels: [`docs/method.md`](../../docs/method.md).
Anything not yet verified says so. Nothing here is estimated.

---

## The table

| Channel | Handle / URL | Size | Label | Notes |
|---|---|---|---|---|
| **Newsletter** | `oddfest.beehiiv.com` — *ODDletters* | **1,514 active** (1,897 total) | `MEASURED` | Beehiiv export 2026-08-31. 60.9% median open. **Silent since 2026-06-22.** |
| **LinkedIn** | `linkedin.com/company/oddfest` | **3,341 followers** | `OBSERVED` | Largest owned audience after the list. Named after one product. |
| **Instagram** | `@oddfest.fi` | pending — capture blocked by rate limiting | — | Primary channel per the brief. |
| **Instagram** | `@oddspace.co` | **510 followers**, 18 posts, following 1 | `OBSERVED` | 18 posts total. Effectively dormant. |
| **Discord** | `discord.gg/ZXtkM6FjBw` — *ODDones* | **315 members, 32 online** | `OBSERVED` | Invite is non-expiring. Description scopes it to ODDfest, not ODD. |
| **YouTube** | `@oddfest` | **24 subscribers, 12 videos** | `OBSERVED` | Functionally does not exist. |
| **TikTok** | `@oddfest` | **does not resolve** | `OBSERVED` | See below — this is a live broken link on the production site. |
| **Facebook** | `facebook.com/oddfest.fi` | not measured | — | Requires auth to measure reliably. |
| **Website** | `allthingsodd.co` | **no analytics data** | `MEASURED` | GA4 acquisition + conversions and Search Console pages + queries all return `records: []`. |

## Three things in that table that need action this week

### 1. The site links to a TikTok account that does not resolve

`allthingsodd.co` links to `https://www.tiktok.com/@oddfest` from the footer, the
fullscreen menu and the contact page. That handle returns nothing.

Verified properly, because the obvious check is misleading: fetching a TikTok profile
page returns the string "Couldn't find this account" **even for accounts that exist**
— `@slush` returns it too. It is part of the client-side shell. The reliable test is
the oEmbed endpoint:

| Handle | oEmbed result |
|---|---|
| `@slush` | resolves — "slush's Creator Profile" |
| `@horstartsandmusic` | resolves — "Horst Arts & Music's Creator Profile" |
| `@oddfest` | `{"message":"Something went wrong","code":400}` |
| `@oddfest.fi`, `@oddfestival`, `@odd_fest`, `@oddfesthelsinki`, `@oddspace`, `@oddspace.co` | all fail identically |

With two working controls, no ODD TikTok account resolves under any obvious handle.
The brief says "we also have TikTok". Either the handle is different from the one
published on the site, or the account was removed, or it was never created. **Someone
who has the credentials needs to answer this**, and until they do the link should
come off the site — it is currently a dead outbound link on every page.

### 2. There is no analytics data at all

`odd-growth-os` pulls GA4 and Search Console on schedule. Both return empty:

```
data/raw/ga4/acquisition.json      → {"window_days": 30, "records": []}
data/raw/ga4/conversions.json      → {"window_days": 30, "records": []}
data/raw/search_console/pages.json → {"start_date": "2026-08-01", …, "records": []}
data/raw/search_console/queries.json → same
```

Fetched 2026-08-31, so the pipeline runs — it just gets nothing back. This is
consistent with blocker B16 in the website repo: the GA4 stream is still labelled
`ODDpage` and the Search Console property for `allthingsodd.co` was never confirmed.

**We currently cannot measure the website at all**, which means we cannot measure any
campaign that points at it. This is the cheapest high-value fix on the list and it
has to happen before launch, not after.

### 3. Every masterbrand channel is named after one product

`@oddfest` on LinkedIn, YouTube and TikTok; `@oddfest.fi` on Instagram and Facebook.
ODDspace has its own small Instagram; ODDference, ODDagency and ODD itself have
nothing.

This is decision **D2**, and it is blocked on **D1**. What is *not* blocked: the
website has already been made honest about it — the icon-only social links now carry
`aria-label="Instagram — @oddfest.fi"` rather than a bare platform name, derived from
the link itself so it cannot drift.

---

## What the audience actually responds to

One data point, and it is a strong one. From `wiki/projects/social-kits/oddference-post-log.csv`:

| Post | Author | Reactions | Comments |
|---|---|---|---|
| "We made it. ODDfest 2025 happened — against all odds…" | **Ronny, personal** | **533** | **70** |
| "ODDfest is starting to have a clearer value prop — imagine if Slush and Flow Festival had a love child" | Thomas McGinley, personal | 26 | 2 |

Logged as "most viral ODDfest post to date. Vulnerability + triumph formula."
Ronny's personal LinkedIn account carries ~10,000 followers and roughly 8,732
LinkedIn connections against the ODDfest company page's 3,341.

**The personal account outperforms the brand account by an order of magnitude**, and
this matches the Buildspace finding that person-led posts beat programme-led posts
2.5×. It should shape the channel plan rather than being treated as an accident.

---

## Still missing

- Instagram follower counts and post-level performance for `@oddfest.fi` — the
  primary channel, and the largest gap in this inventory.
- Facebook page size.
- TikTok: whether an account exists at all.
- **Any historical social performance data whatsoever.** `odd-growth-os` has Attio,
  Beehiiv, GA4, Search Console, Notion, Calendar, Gmail and Drive pipelines and
  **no social pipeline**. Nothing about ODD's Instagram or LinkedIn history has ever
  been measured. Post-level capture for `@oddfest.fi` and the LinkedIn page is the
  single biggest intel gap in this repo.
