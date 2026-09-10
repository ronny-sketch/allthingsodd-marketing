# Instagram — audit

**Captured 2026-09-10** in Chrome, logged out, using the Buildspace technique:
`/p/<shortcode>/embed/captioned/` loaded in an iframe from an `instagram.com` page,
which makes it same-origin and readable from `contentDocument`. Raw curl does not
work — the embed is client-side rendered and returns a 622KB CSS shell with no data.

Data: [`../../data/raw/ig_posts_oddfest_co.csv`](../../data/raw/ig_posts_oddfest_co.csv),
[`../../data/raw/ig_profiles.csv`](../../data/raw/ig_profiles.csv).

---

## 1. The website links to the wrong Instagram account

**`allthingsodd.co` links to `instagram.com/oddfest.fi` from the footer, the
fullscreen menu and the contact page. That handle does not resolve.**

Verified three ways, each with a working control:

| Method | `@oddfest.fi` | Control |
|---|---|---|
| Chrome, logged out | "Profile isn't available — the link may be broken, or the profile may have been removed" | `@horstartsandmusic` renders normally |
| `og:description` via curl | empty | `@oddspace.co` returns its stats |
| `fetch()` from the instagram.com origin | no `og:description` | 8 of 11 handles returned theirs |

**The real account is `@oddfest.co`** — found via ODD's own link-in-bio page at
`zaap.bio/oddfest`, which is where the newsletter's 12 `zaap.bio` referrals came from.

### Every ODD-adjacent handle, checked

| Handle | Followers | Posts | What it is |
|---|---|---|---|
| **`@oddfest.co`** | **4,409** | **240** | **The real ODDfest account** |
| `@oddspace.co` | 510 | 18 | Real. ODDspace. |
| `@ronnytheodd` | 3,626 | 286 | Ronny's personal account |
| `@oddfest.fi` | — | — | **Does not exist.** Published on the live site. |
| `@odd_fest` | 156 | 94 | **Not ODD** — links to `oddfest.nl`, a Dutch festival |
| `@oddfest` | 9 | 1 | Empty. Not ODD's. |
| `@allthingsodd` | 4 | 0 | **Taken by someone else**, dormant |
| `@oddagency` | 5 | 3 | Taken — an unrelated Russian SMM account |
| `@oddference`, `@oddstudio.fi`, `@oddtheater` | — | — | Free |

## 2. This corrects two claims made earlier in this repo

**Instagram is ODD's largest owned audience, not LinkedIn.**

| Channel | Size |
|---|---|
| **Instagram `@oddfest.co`** | **4,409** |
| LinkedIn `company/oddfest` | 3,341 |
| Ronny's Instagram | 3,626 |
| Newsletter, active | 1,514 |
| ODDspace Instagram | 510 |
| Discord | 315 |
| YouTube | 24 |

**And "social is not an acquisition channel" was too strong.** The correct claim is
narrower and more useful: the audience is real and it is ODD's biggest, but **it has
never been connected to anything**. Instagram has produced 4 newsletter subscribers
against 4,409 followers. That is a conversion and instrumentation failure, not an
audience failure — and it is a much better problem to have.

## 3. What the posts show

Twelve posts, which is all a logged-out profile exposes before the login wall. The
other 228 need an authenticated session. Treat everything in this section as
**indicative, not established.**

### ODD's own posts, by likes

| Likes | Post | Type |
|---|---|---|
| **121** | "Thank you for being part of ODDfest and ODDference 2026… 3 days. Over 200 acts. 5 iconic venues. 1 odd community." | **Gratitude / emotional** |
| 68 | "ODDfest 2026 photos are live" | Utility |
| 52 | "A week worth remembering" — Creative Week photo bank | Moment |
| 34 | ODDference speakers photographed by @ferookart | Credit |
| 26 | "Thank you to our media partners" | Institutional |
| **21** | "Share your ODDfest experience" — feedback form | **Admin** |

Median ≈ 43 likes on 4,409 followers — roughly **1.0–1.2% engagement**.

### Posts about ODD, by other people

| Likes | Author | Followers |
|---|---|---|
| **135** | `@smilefestival.de` — "smile. showcase @oddfest.co in Helsinki" | — |
| **114** | `@aes.kuva` — "my favourite work at @oddfest.co" | — |
| **113** | `@ronnytheodd` — "Last year we did something brave… We took a loss. We learned a lot." | 3,626 |

**Every one of these beats ODD's own median by 2.5–3×.** Ronny's post drew 113 likes
on 3,626 followers (3.1%) against ODD's ~1.1% — the same 2.5–3× person-over-page
multiplier already seen on LinkedIn (533 reactions) and in the Buildspace teardown
(2.5×). Three independent channels, one result.

### The nuance the newsletter data missed

ODD's best Instagram post is gratitude; its worst is a feedback form. On email it is
the reverse — "Everything You Need to Know" clicked 9.46% while lineup drops clicked
2%.

That is not a contradiction, it is a division of labour:

> **Instagram carries the feeling. Email carries the instruction.**

Posting admin to Instagram (feedback forms, partner thank-yous) spends attention
cheaply. Sending pure hype to email wastes a 60% open rate. Both are currently
happening.

## 4. Other things found on `zaap.bio/oddfest`

ODD's real link-in-bio page — the actual front door for 4,409 Instagram followers:

- Photo bank on **Flickr** (`flickr.com/photos/oddfest/`)
- 2025 Impact Report on **Issuu**
- **ODDletters** signup
- **ODDones Discord** — but on invite `discord.gg/PM6UY9tbjy`, **not** the
  `discord.gg/ZXtkM6FjBw` published on the website. Two different invites in
  circulation.
- **Venga** app for year-round events (`venga.app/club/…`)
- Facebook at `facebook.com/profile.php?id=61572538992011` — **not**
  `facebook.com/oddfest.fi`, which is what the website links to
- Tagline in use: *"Where art, business, and society stop pulling apart — and start
  learning, co-creating, and making progress together."*
- Instagram bio: *"Creativity on collision course. Built at @oddspace.co"*

Story highlights, which show how the account already organises itself: `FEATURES`,
`ODDFEST`, `ODDFERENCE`, `26 LINEUP`, `CREATIVE WEEK`, `26 PROGRAM`, `ODDEVENTS`,
`26 LAUNCH`, `25 SAT`, `25 FRI`.

## 5. Consequences

| Finding | What it changes |
|---|---|
| The site's Instagram link is dead | Fix today. Every visitor sent to Instagram since the 2026-09-04 launch hit an error page. |
| The site's Facebook link is wrong | Same fix, same commit. |
| Two Discord invites in circulation | Pick one, retire the other. |
| Instagram is the biggest channel | The channel doctrine holds, but Instagram deserves more weight than it was given. |
| ~1.1% engagement on ODD's own posts | The audience exists and is under-served, not absent. |
| Third-party and personal posts win by 2.5–3× | Confirms the person-over-page thesis on a third independent channel. |
| `@allthingsodd` is already taken | **A hard constraint on decision D1, option B.** A rebrand onto that name cannot have the matching Instagram handle. |
| `zaap.bio` is the real front door | It is not measured, not branded, and not in `odd-growth-os`. |

## Corrections to earlier files in this repo

- `intel/self/00-channel-inventory.md` listed Instagram as `@oddfest.fi`, "pending
  capture". The handle does not exist; the account is `@oddfest.co` at 4,409
  followers. Now fixed.
- The same file called LinkedIn "the largest owned audience after the list". It is
  not — Instagram is, and so is Ronny's personal Instagram.
- `strategy/00-marketing-logic.md` §1 said "social has produced 16 newsletter
  subscribers, ever" and drew from it that social is not an acquisition channel.
  The number is right; the conclusion was too broad. Narrowed above.

## Still missing

- **228 of 240 posts.** Needs a logged-in session. This is the one remaining large
  gap and Ronny can unlock it in a minute with his own account.
- **Reach, saves, shares and follower growth over time** — Instagram only shows these
  to the account owner, in the app.
- **Whether `@oddfest.fi` ever existed** and was renamed, or was only ever a typo.
  No Wayback captures exist either way.
- **Facebook page size.**
