#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 || $# -gt 2 ]]; then
  echo "Usage: $0 <feed_url> [output_file]" >&2
  exit 1
fi

feed_url="$1"
output_file="${2:-}"

if command -v feed2md >/dev/null 2>&1; then
  if [[ -n "$output_file" ]]; then
    exec feed2md "$feed_url" --output "$output_file"
  fi
  exec feed2md "$feed_url"
fi

if command -v npx >/dev/null 2>&1; then
  if [[ -n "$output_file" ]]; then
    exec npx -y @myx0m0p/feed2md "$feed_url" --output "$output_file"
  fi
  exec npx -y @myx0m0p/feed2md "$feed_url"
fi

echo "Error: neither 'feed2md' nor 'npx' is available." >&2
echo "Install Node.js and run: npm install -g @myx0m0p/feed2md" >&2
exit 1
