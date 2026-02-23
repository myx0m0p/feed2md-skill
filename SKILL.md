---
name: feed-to-md
title: feed-to-md
description: Convert RSS or Atom feed URLs into Markdown using feed2md. Use this when a user asks to turn a feed URL into readable Markdown, optionally limiting items or writing to a file.
---

# RSS/Atom to Markdown

Use this skill when the task is to convert an RSS/Atom feed URL into Markdown.

## What this skill does

- Converts a feed URL to Markdown via `feed2md`
- Supports stdout output or writing to a Markdown file
- Supports limiting article count and summary controls

## Inputs

- Required: RSS/Atom URL
- Optional:
  - output path
  - max item count
  - template preset (`short` or `full`)

## Usage

Run with `npx`:

```bash
npx -y feed2md-cli "<feed_url>"
```

## Common examples

Basic conversion:

```bash
npx -y feed2md-cli "https://example.com/feed.xml"
```

Write to file:

```bash
npx -y feed2md-cli "https://example.com/feed.xml" --output feed.md
```

Limit to 10 items:

```bash
npx -y feed2md-cli "https://example.com/feed.xml" --limit 10
```

## CLI options

- `-o, --output <file>`: write markdown to file
- `--limit <number>`: max number of articles
- `--no-summary`: exclude summaries
- `--summary-max-length <number>`: truncate summary length
- `--template <preset>`: `short` (default) or `full`

## Install (optional)

```bash
npm install -g feed2md-cli
```

Then use directly:

```bash
feed2md "https://example.com/feed.xml"
```
