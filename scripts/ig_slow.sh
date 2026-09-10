#!/usr/bin/env bash
# Very slow Instagram profile capture — 180s between handles — for use after an
# IP rate-limit. Appends to data/raw/ig_profiles.csv on success.
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0 Safari/537.36"
OUT="data/raw/ig_profiles.csv"
for h in "$@"; do
  d=$(curl -sL -A "$UA" -H "Accept-Language: en-US,en;q=0.9" "https://www.instagram.com/$h/" --max-time 30 \
      | grep -oE '<meta property="og:description" content="[^"]*"' | head -1 | sed -E 's/.*content="//; s/"$//')
  if [ -n "$d" ]; then
    f=$(echo "$d" | grep -oE '^[0-9.,KM]+ Followers' | sed 's/ Followers//')
    g=$(echo "$d" | grep -oE '[0-9.,KM]+ Following' | sed 's/ Following//')
    p=$(echo "$d" | grep -oE '[0-9.,KM]+ Posts' | sed 's/ Posts//')
    n=$(echo "$d" | sed -E 's/.*videos from //; s/ \(&#064;.*//')
    echo "$h,$f,$g,$p,$n,$(date +%F)" >> "$OUT"
    echo "OK $h $f"
  else
    echo "BLOCKED $h"
  fi
  sleep 180
done
