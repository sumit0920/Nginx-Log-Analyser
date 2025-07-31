#!/bin/bash

LOGFILE="/var/log/nginx/access.log"  # Replace if your log file is named differently

echo "Top 5 IP addresses with the most requests:"
grep -oE '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' "$LOGFILE" \
  | sort | uniq -c | sort -nr | head -n 5 \
  | sed 's/^ *\([0-9]*\) \(.*\)$/\2 - \1 requests/'
echo ""

echo "Top 5 most requested paths:"
grep -oE '"(GET|POST|PUT|DELETE) [^ ]+' "$LOGFILE" \
  | sed 's/"\(GET\|POST\|PUT\|DELETE\) //' \
  | sort | uniq -c | sort -nr | head -n 5 \
  | sed 's/^ *\([0-9]*\) \(.*\)$/\2 - \1 requests/'
echo ""

echo "Top 5 response status codes:"
grep -oE '" [0-9]{3} ' "$LOGFILE" \
  | sed 's/" //;s/ $//' \
  | sort | uniq -c | sort -nr | head -n 5 \
  | sed 's/^ *\([0-9]*\) \(.*\)$/\2 - \1 requests/'
echo ""

echo "Top 5 user agents:"
sed -n 's/.*"[^"]*" "[^"]*" "\(.*\)"/\1/p' "$LOGFILE" \
  | sort | uniq -c | sort -nr | head -n 5 \
  | sed 's/^ *\([0-9]*\) \(.*\)$/\2 - \1 requests/'


