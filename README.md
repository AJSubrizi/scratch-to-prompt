# Scratch to Prompt

<p align="center">
  <strong>Turn scratch notes into prompts an AI agent can actually run.</strong><br>
  A small skill for Claude Code, Cursor, Claude.ai, Codex, and other AI agents.
</p>

<p align="center">
  <a href="https://github.com/AJSubrizi/scratch-to-prompt/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License: MIT"></a>
  <a href="https://github.com/anthropics/prompt-eng-interactive-tutorial"><img src="https://img.shields.io/badge/based%20on-Anthropic%20Tutorial-orange" alt="Based on Anthropic Tutorial"></a>
  <a href="https://skills.sh"><img src="https://img.shields.io/badge/install-npx%20skills-purple" alt="npx skills"></a>
</p>

---

**Scratch to Prompt** turns half-formed product ideas, coding tasks, feature notes, or "I know what I mean but not how to ask" thoughts into structured, copy-paste-ready prompts.

It adds the pieces agents need to execute well: clear role, context, constraints, deliverables, assumptions, and a quality bar. The workflow is inspired by [Anthropic's Interactive Prompt Engineering Tutorial](https://github.com/anthropics/prompt-eng-interactive-tutorial); this repo ships the skill workflow and checklist, not the tutorial notebooks.

## Quick install

Install globally with the open [skills](https://github.com/vercel-labs/skills) CLI:

```bash
npx skills add AJSubrizi/scratch-to-prompt -g -y
```

The installed skill id is **`scratch`**. Restart Claude Code or Cursor after the first install.

| Agent | Invoke after install |
|-------|----------------------|
| **Claude Code** | `/scratch <your idea>` |
| **Cursor** | `@scratch` + your idea |
| **Codex / others** | Attach or mention the **scratch** skill, then describe your idea |

Install for one agent only:

```bash
npx skills add AJSubrizi/scratch-to-prompt -a cursor -g -y
npx skills add AJSubrizi/scratch-to-prompt -a claude-code -g -y
```

Preview the skill without installing:

```bash
npx skills add AJSubrizi/scratch-to-prompt --list
```

## Example transformation

Rough input:

```text
/scratch I want to build a web app where you paste a URL and it generates a detailed prompt to recreate the site
```

Scratch to Prompt turns that into:

1. **Refined understanding** - what you are building, who it is for, and what success means.
2. **Recommended prompt** - a complete prompt for the target agent, with role, context, requirements, constraints, output format, and quality bar.
3. **Optional improvements** - 3-7 concrete ways to make the prompt stronger before you run it.

The result stays practical: detailed enough for an agent to act on, but still sectioned and scannable.

## More examples

**Claude Code**

```text
/scratch build a Next.js dashboard for a sales team to track leads, notes, and follow-ups
```

**Cursor**

```text
@scratch app for field sales reps that finds prospects on a map
```

**Codex / other agents**

```text
@scratch paste a URL and generate a phased prompt to rebuild the site with verification steps
```

## What the skill optimizes for

- Clear, direct instructions
- Separated context, requirements, and constraints
- The right role for the target agent
- Explicit output format and deliverables
- Stated assumptions instead of hidden guesses
- Guardrails against unsupported claims or invented facts
- Step-by-step structure only when it helps
- Few-shot examples only when they reduce ambiguity

Italian input returns Italian output unless you ask for English.

## Does `/scratch` work with npx?

Yes. This repo's `SKILL.md` declares `name: scratch`, so the skills CLI installs it as `~/.agents/skills/scratch` and wires that id to `/scratch` and `@scratch`.

If you installed an older version that used `name: scratch-to-prompt`, remove it and reinstall:

```bash
rm -rf ~/.agents/skills/scratch-to-prompt
npx skills add AJSubrizi/scratch-to-prompt -g -y
```

## Leaderboard

Installs through `npx skills add AJSubrizi/scratch-to-prompt` are counted anonymously on [skills.sh](https://skills.sh). No manual signup is required.

## Manual install

Use the shell scripts if you prefer not to use `npx`, or if you are hacking on this repo locally:

```bash
git clone https://github.com/AJSubrizi/scratch-to-prompt.git
cd scratch-to-prompt
./install-all.sh    # Claude Code + Cursor + project copy
```

| Script | Installs to |
|--------|-------------|
| `./install.sh` | `~/.claude/skills/scratch` |
| `./install-cursor.sh` | `~/.cursor/skills/scratch` |

Same commands after install: **`/scratch`** and **`@scratch`**.

<details>
<summary><strong>Claude.ai (upload zip)</strong></summary>

1. Zip `skills/scratch/` (must include `SKILL.md`).
2. Upload it as a project skill in Claude settings.
3. Invoke it when your request matches the skill description. Slash syntax may differ.

</details>

## Repository layout

```text
scratch-to-prompt/
├── skills/scratch/              <- edit here (source of truth)
│   ├── SKILL.md                 <- name: scratch (drives /scratch and npx)
│   ├── examples.md
│   └── references/
├── .cursor/skills/scratch/      <- synced project skill
├── install.sh
├── install-cursor.sh
├── install-all.sh
└── scripts/sync-project-skill.sh
```

| Item | Value |
|------|--------|
| GitHub | `AJSubrizi/scratch-to-prompt` |
| Install command | `npx skills add AJSubrizi/scratch-to-prompt` |
| Skill id | `scratch` |
| Invoke | `/scratch` or `@scratch` |

## Contributing

1. Edit **`skills/scratch/`** only.
2. Sync the project copy:

   ```bash
   ./scripts/sync-project-skill.sh
   ```

3. Open a PR.

## Uninstall

```bash
npx skills remove scratch 2>/dev/null || true
rm -rf ~/.agents/skills/scratch ~/.claude/skills/scratch ~/.cursor/skills/scratch
```

## License

[MIT](LICENSE)

<p align="center">
  <sub>Built for people who think in scratch notes and ship in prompts.</sub>
</p>
