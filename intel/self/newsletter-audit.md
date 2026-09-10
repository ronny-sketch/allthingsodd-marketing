# ODDletters — newsletter audit

**Measured:** 2026-09-10
**Source:** Beehiiv API exports in `odd-growth-os/data/raw/beehiiv/` — `subscriptions.json`
(1,897 records, fetched 2026-08-31), `posts_with_stats.json` (21 posts).
**Publication:** `ODDletters`, pub id `pub_8b91c544-…`, created 2025-06-25,
organisation `Ronny's Hiiv`, on `oddfest.beehiiv.com`.

Every number below is recomputed from those files, not from the Beehiiv dashboard.

---

## The one-line version

ODDletters is the **best-performing asset ODD owns and the most neglected**. A 60.9%
median open rate against an industry norm around 35–40%, on a list that has not been
sent to in 80 days, has never been marketed, and is shrinking by design.

---

## 1. The list is one import, decaying

| | |
|---|---|
| Total records | 1,897 |
| Active | 1,514 (79.8%) |
| Inactive | 346 |
| Invalid | 37 |

**1,589 of the 1,897 — 83.8% of the entire list — were created in a single month:
August 2025.** That is an import, not growth. It lines up with ODDfest 2025 ticket
buyers.

Everything since:

| Month | Signups | Still active |
|---|---|---|
| 2025-09 | 25 | 24 |
| 2025-10 | 108 | 89 |
| 2025-11 | 10 | 10 |
| 2025-12 | 44 | 8 |
| 2026-01 | 26 | 25 |
| 2026-02 | 8 | 8 |
| 2026-03 | 16 | 16 |
| 2026-04 | 20 | 18 |
| 2026-05 | 19 | 18 |
| 2026-06 | 13 | 13 |
| 2026-07 | **2** | 2 |
| 2026-08 | **7** | 5 |

Organic acquisition over the last six full months: **77 signups, ~12.8/month**. Over
the last two: **9, or 4.5/month**. At that rate the list replaces its own churn in
roughly never.

The December 2025 cohort is worth flagging separately: 44 signups, **8 still active**
(18%). Every other month retains 90–100%. Something in that month acquired 36 people
who bounced or unsubscribed almost immediately — a list buy, a giveaway, or a
mis-scoped import. It should be identified before any acquisition push copies it.

## 2. Nothing has ever driven a signup

`utm_source` across all 1,897 records:

| Source | Count |
|---|---|
| direct | 1,747 (92.1%) |
| oddfest.co | 120 |
| zaap.bio | 12 |
| linkedin.com | 9 |
| instagram.com | 4 |
| linkedin.android | 2 |
| facebook.com | 1 |
| growth_os_full_run | 1 |
| footer_newsletter | 1 |

**Instagram, LinkedIn and Facebook have produced 16 newsletter subscribers between
them, ever.** Two readings, and both are true:

- Attribution is broken. 92% "direct" means the signup forms carry no UTMs, so we
  cannot tell what works.
- Even generously, social is not feeding the list. 120 from `oddfest.co` — the old
  site — against 4 from Instagram is not an attribution artefact at that ratio.

This is the single cheapest fix in the whole plan: tag every link out of every
channel before the first All Things ODD post goes up. Otherwise we relaunch and
learn nothing, again.

## 3. Send history: 20 emails, then silence

| Date | Title | Recipients | Open % | Click % | Web views |
|---|---|---|---|---|---|
| 2025-10-10 | Hello Again, We've Been Busy | 1,693 | **75.67** | 8.88 | 46 |
| 2025-10-17 | You Spoke, We Listened | 1,666 | 66.71 | 7.30 | 15 |
| 2025-10-30 | The ODDest of Lunches Is Coming | 1,634 | 61.49 | 6.67 | 13 |
| 2025-11-13 | The Next ODD Moments Are Calling | 1,612 | 64.92 | 5.25 | 11 |
| 2025-12-01 | A Brand-New ODDpartnership | 1,599 | 65.92 | 6.28 | 21 |
| 2025-12-19 | The Year Is Coming to an End | 1,577 | 61.82 | 5.99 | 69 |
| 2026-01-14 | New Ways to Get Involved | 1,536 | 62.44 | 8.41 | 29 |
| 2026-01-30 | 2026, We Are Live | 1,525 | 61.25 | 6.44 | 23 |
| 2026-02-13 | The ODDs Are In Your Favor | 1,518 | 58.90 | 5.19 | 9 |
| 2026-02-26 | Open Calls Are Officially Live | 1,500 | 57.67 | 6.97 | 20 |
| 2026-03-14 | Last Days to Apply via Open Calls | 1,491 | 54.29 | 4.60 | 12 |
| 2026-03-27 | ODDfest 2026 First Lineup Drop Is Live | 1,493 | 61.94 | **2.07** | 28 |
| 2026-03-27 | ODDfest 2026 First Lineup Drop Is Live *(dup)* | 1,494 | 64.06 | **2.00** | 5 |
| 2026-04-09 | Finally Some Very Good News | 1,488 | 57.00 | 8.22 | 13 |
| 2026-04-29 | Second Wave of Lineup Now Live | 1,483 | 54.44 | **3.01** | 15 |
| 2026-05-15 | Third Wave of Lineup Going Live | 1,480 | 54.68 | 5.00 | 13 |
| 2026-05-29 | The Schedules Are Live | 1,479 | 55.03 | 6.97 | 5 |
| 2026-06-07 | Everything You Need to Know | 1,471 | 60.48 | **9.46** | 20 |
| 2026-06-12 | It's here. ODDfest starts today. | 1,470 | 53.86 | 2.81 | 2 |
| 2026-06-22 | Thank You | 1,460 | 55.62 | 8.56 | 73 |

**Median open 60.9%. Median click ~6.2%.** Both are excellent.

Three structural facts in that table:

1. **Silence since 2026-06-22** — 80 days at time of writing, and the whole
   All Things ODD launch is happening into that silence.
2. **Recipients fall monotonically, 1,693 → 1,460.** A 13.8% decline across 20 sends
   with no replacement. Opens decline with it: 63.7% average over the first ten
   sends, 57.1% over the last ten. The list is being consumed, not built.
3. **A duplicate send on 2026-03-27** — the same lineup email went to two near-identical
   segments an hour apart. Whatever caused it is still in the workflow.

## 4. What people actually click

Sorting the same table by click rate reverses the assumed hierarchy:

| Rank | Post | Click % | Type |
|---|---|---|---|
| 1 | Everything You Need to Know | 9.46 | **Utility** |
| 2 | Hello Again, We've Been Busy | 8.88 | Return / news |
| 3 | Thank You | 8.56 | **Emotional** |
| 4 | New Ways to Get Involved | 8.41 | **Participation** |
| 5 | Finally Some Very Good News | 8.22 | Emotional |
| … | | | |
| 17 | Second Wave of Lineup | 3.01 | Lineup |
| 18 | It's here, ODDfest starts today | 2.81 | Hype |
| 19–20 | First Lineup Drop (both) | 2.07 / 2.00 | **Lineup** |

**Lineup announcements are the worst-clicking content ODD produces**, and they were
treated as the main event: four of twenty sends. They open fine — 54–64%, people are
curious — and then nobody clicks. Meanwhile "here is everything you need to know" and
"here is how to take part" clear 8–9.5%.

The audience opens for the news and acts on the *usefulness*. This is the same
finding as Buildspace's — the programme is not the subject, the person and the
practical next step are — arrived at from ODD's own data. See
[[../benchmarks/buildspace]].

## 5. The web version does not exist

Median web views per post: **15**. Best ever: 73. Against 1,500+ email recipients.

ODDletters is a pure email product with an unused public archive. That matters for
All Things ODD: there is currently **no searchable, linkable body of ODD writing on
the open web**. Every newsletter written so far is invisible to Google, to a new
partner doing due diligence, and to the site itself.

---

## What this audit changes

| Finding | Consequence |
|---|---|
| 60.9% open rate | The newsletter is the strongest owned channel. Treat it as the destination, not the afterthought. |
| Dormant 80 days | The re-open email is the highest-stakes send in the plan. It cannot be a rebrand announcement — see [[../../strategy/newsletter]] when written. |
| 4.5 signups/month | Without an acquisition mechanic the list is dead within two years, regardless of open rate. |
| 92% "direct" | Tag everything before launch, or the relaunch is unmeasurable. |
| Lineup content clicks 2% | Stop leading with programming. Lead with utility and people. |
| Web archive at 15 views | Publish the newsletter on allthingsodd.co as indexable pages. |
| Dec 2025 cohort at 18% retention | Identify the source before repeating it. |

---

## Open questions this audit cannot answer

- **Where the August 2025 import came from**, and whether those 1,589 people ever
  consented to a newsletter as opposed to buying a ticket. This is a GDPR question
  as much as a marketing one, and it should be answered before the re-open send.
- **Whether `oddfest.beehiiv.com` gets renamed or re-domained.** Flagged as
  `BLOCKED — EXTERNAL CREDENTIAL (B15)` in the website repo's identity matrix.
  Renaming carries subscriber-loss risk on a list that cannot afford it.
- **Why December 2025 churned.**
