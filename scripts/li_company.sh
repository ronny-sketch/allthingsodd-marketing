#!/usr/bin/env bash
# Capture LinkedIn company page follower counts from the public (logged-out) page.
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0 Safari/537.36"
for c in "$@"; do
  r=""
  for try in 1 2; do
    r=$(curl -sL -A "$UA" -H "Accept-Language: en-US,en;q=0.9" \
      "https://www.linkedin.com/company/$c/" --max-time 25 \
      | grep -oiE "[0-9][0-9,.]* followers" | head -1)
    [ -n "$r" ] && break
    sleep 3
  done
  echo "$c,${r:-UNRESOLVED}"
  sleep 2
done
