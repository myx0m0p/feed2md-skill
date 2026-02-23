# feed-to-md Skill

This skill converts RSS/Atom feed URLs into Markdown using `feed2md-cli`.

## Files

- `SKILL.md`: skill definition and usage instructions
- `scripts/feed-to-markdown.sh`: wrapper script to run the CLI directly or via `npx`

## Requirements

- `feed2md-cli` installed globally, or
- `npx` available from Node.js

## Install CLI

```bash
npm install -g @myx0m0p/feed2md-cli
```

## Usage

Direct CLI:

```bash
feed2md-cli "https://example.com/feed.xml"
```

Wrapper script:

```bash
./scripts/feed-to-markdown.sh "https://example.com/feed.xml"
./scripts/feed-to-markdown.sh "https://example.com/feed.xml" output.md
```
