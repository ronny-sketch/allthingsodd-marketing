# Audiences

Five groups. Each one is defined by **what they are trying to do**, not by
demographics, because what they are trying to do is what makes them click.

The test for any piece of content: *which of these five is it for, and what does it
ask them to do?* If the answer is "everyone" it is for nobody, and that is the
current default — all 1,514 newsletter subscribers get the same email.

---

## The five

### 1. The Participant
**Artists, performers, makers, students, the people who come to things.**

| | |
|---|---|
| Where they are | Instagram (`@oddfest.co`, 4,409), Discord (315), Ronny's Instagram |
| What they want | Something to be part of. Proof it will be good. A way in that doesn't feel like an application. |
| What they respond to | People, moments, gratitude. ODD's top Instagram post is a thank-you (121 likes); its worst is a feedback form (21). |
| What they are worth | The room being full. Word of mouth. Eventually, ticket revenue. |
| The ask | Come. Apply. Bring someone. |
| Currently | Reachable on Instagram, almost entirely absent from the list. |

### 2. The Member
**ODDspace's 15 paying members, ODDstudio, the regulars.**

| | |
|---|---|
| Where they are | In the building. Discord. `@oddspace.co` (510). |
| What they want | Belonging, and for the space to keep existing. |
| What they respond to | Being named. Being asked. Insider information before it is public. |
| What they are worth | **Recurring revenue** — the most reliable money ODD has. |
| The ask | Renew. Bring a member. Host something. |
| Currently | Best-served group and still not segmented in the newsletter. |

### 3. The Delegate
**ODDference attendees, professionals, the people who expense a ticket.**

| | |
|---|---|
| Where they are | LinkedIn — the company page (3,341) and, far more effectively, Ronny's (~10,000) |
| What they want | To be somewhere useful. A defensible reason to justify the day. |
| What they respond to | Named speakers, a clear agenda, peers going, utility. Email is their medium: "Everything You Need to Know" clicked 9.46%. |
| What they are worth | **267 of them exist and are the nearest revenue in the system** — target 50 pre-buys × €350 = €17,500. |
| The ask | Buy early. Bring a colleague. Speak. |
| Currently | Sitting in an unsegmented list, not emailed since June. |

### 4. The Partner
**Sponsors, funders, institutions, media, city bodies, ODDagency clients.**

| | |
|---|---|
| Where they are | LinkedIn, email, and rooms Ronny is already in |
| What they want | Evidence. Reach. Association with something credible and alive. |
| What they respond to | Numbers, named precedents, reports. **Slush treats research output as marketing; ODD treats it as reporting.** |
| What they are worth | The largest single amounts, and the October grant window. |
| The ask | Fund. Partner. Host. Commission. |
| Currently | Served by decks and meetings, not by any owned channel. |

### 5. The Curious
**People who have heard of ODD and are not in yet.**

| | |
|---|---|
| Where they are | Instagram, mostly via other people's posts |
| What they want | To understand what this is in one sentence |
| What they respond to | Third-party proof. `@smilefestival.de` (135) and `@aes.kuva` (114) both beat ODD's own median. |
| What they are worth | Next year's Participants |
| The ask | Follow. Subscribe. |
| Currently | The only group current activity actually serves — and the least valuable this quarter. |

---

## The uncomfortable ranking

Given the September gate and the €260K gap, ordered by **money reachable this
quarter**:

| Rank | Audience | Why |
|---|---|---|
| 1 | **Delegate** | 267 named people, a known price, an existing product. €17,500 is one email away. |
| 2 | **Member** | Recurring revenue, and the space's survival depends on it. |
| 3 | **Partner** | Biggest amounts, longest cycle. October is the window. |
| 4 | **Participant** | Fills the room, which is what makes 1–3 possible next year. |
| 5 | **Curious** | Matters in 2027, not in September. |

**Almost all current activity points at 4 and 5.** That is the single biggest
misallocation in the system, and it is fixable without making anything new — groups
1 and 2 are already on the list, unsegmented and unemailed.

## Segmentation, concretely

The one change that makes all of this operable. Beehiiv supports custom fields; ODD
uses none. Tag on capture, using **which room they came from**:

| Tag | Set when |
|---|---|
| `participant` | Bought a festival ticket, applied to an open call, attended an ODDfest event |
| `member` | ODDspace or ODDstudio membership |
| `delegate` | ODDference attendee or pass-holder |
| `partner` | Sponsor, funder, institution, media |
| `curious` | Signed up from the site, Instagram or zaap.bio with no other signal |

Slush segments into Startup / Investor / Media / Other at signup and has done for
years. It is free, it takes one afternoon, and without it every recommendation in
[`02-channel-playbooks.md`](02-channel-playbooks.md) degrades to "post more".
