#!/usr/bin/env bash
# Capture Instagram public profile stats (followers / following / posts) from og:description.
# Instagram rate-limits bursts hard, so this is deliberately slow: ~20s between handles.
# Usage: scripts/ig_profile.sh handle [handle...]
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0 Safari/537.36"
for h in "$@"; do
  desc=""
  for try in 1 2 3 4; do
    desc=$(curl -sL -A "$UA" -H "Accept-Language: en-US,en;q=0.9" \
      "https://www.instagram.com/$h/" --max-time 25 \
      | grep -oE '<meta property="og:description" content="[^"]*"' | head -1 \
      | sed -E 's/.*content="//; s/"$//')
    [ -n "$desc" ] && break
    sleep $((try * 20))
  done
  if [ -z "$desc" ]; then
    echo "$h,,,,UNRESOLVED"
  else
    f=$(echo "$desc" | grep -oE '^[0-9.,KM]+ Followers' | sed 's/ Followers//')
    g=$(echo "$desc" | grep -oE '[0-9.,KM]+ Following' | sed 's/ Following//')
    p=$(echo "$desc" | grep -oE '[0-9.,KM]+ Posts' | sed 's/ Posts//')
    n=$(echo "$desc" | sed -E 's/.*videos from //; s/ \(&#064;.*//')
    echo "$h,$f,$g,$p,\"$n\""
  fi
  sleep 20
done
