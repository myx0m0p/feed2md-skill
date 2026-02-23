# feed-to-md Skill

This skill converts RSS/Atom feed URLs into Markdown using `feed2md`.

## Files

- `SKILL.md`: skill definition and usage instructions

## Requirements

- Node.js with `npx` available

## Install

```bash
npm install -g feed2md-cli
```

## Usage

```bash
npx -y feed2md-cli "https://example.com/feed.xml"
npx -y feed2md-cli "https://example.com/feed.xml" --limit 5
npx -y feed2md-cli "https://example.com/feed.xml" --output result.md
```
