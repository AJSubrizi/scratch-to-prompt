# Scratch to Prompt

<p align="center">
  <strong>Turn messy ideas into agent-ready prompts.</strong><br>
  A small skill for Claude Code, Cursor, and Claude — built on Anthropic’s prompt-engineering principles.
</p>

<p align="center">
  <a href="https://github.com/AJSubrizi/scratch-to-prompt/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License: MIT"></a>
  <a href="https://github.com/anthropics/prompt-eng-interactive-tutorial"><img src="https://img.shields.io/badge/based%20on-Anthropic%20Tutorial-orange" alt="Based on Anthropic Tutorial"></a>
  <a href="https://skills.sh"><img src="https://img.shields.io/badge/install-npx%20skills-purple" alt="npx skills"></a>
</p>

---

You scribble a half-formed idea. **Scratch to Prompt** turns it into a structured, copy-paste-ready prompt — with context, constraints, deliverables, and a quality bar — so Claude, Codex, or Cursor can actually execute it.

Inspired by [Anthropic’s Interactive Prompt Engineering Tutorial](https://github.com/anthropics/prompt-eng-interactive-tutorial). This repo ships the **checklist and workflow**, not the notebooks.

## ✨ What you get

Every run returns:

1. **Refined understanding** — what you’re really trying to build  
2. **Recommended prompt** — ready to paste into your agent  
3. **Optional improvements** — 3–7 concrete ways to make it stronger  

The skill applies prompt-engineering basics internally: clarity, roles, separated context, output format, step-by-step when useful, few-shot when needed, and anti-hallucination guardrails.

## 🚀 Install (recommended)

Uses the open [skills](https://github.com/vercel-labs/skills) CLI ([skills.sh](https://skills.sh) leaderboard). Installs as skill id **`scratch`** so slash and mentions stay short.

```bash
npx skills add AJSubrizi/scratch-to-prompt
```

| Agent | Invoke after install |
|-------|----------------------|
| **Claude Code** | `/scratch <your idea>` |
| **Cursor** | `@scratch` + your idea |
| **Codex / others** | Attach or mention the **scratch** skill, then describe your idea |

Target one agent only:

```bash
npx skills add AJSubrizi/scratch-to-prompt -a cursor -g -y
npx skills add AJSubrizi/scratch-to-prompt -a claude-code -g -y
```

Preview without installing:

```bash
npx skills add AJSubrizi/scratch-to-prompt --list
```

Restart Claude Code or Cursor after the first install.

### Does `/scratch` work with npx?

**Yes** — as long as `SKILL.md` declares `name: scratch` (this repo does). The CLI installs to `~/.agents/skills/scratch` and wires that id to each agent, which maps to **`/scratch`** and **`@scratch`**.

If you installed an older version that used `name: scratch-to-prompt`, remove it and reinstall:

```bash
rm -rf ~/.agents/skills/scratch-to-prompt
npx skills add AJSubrizi/scratch-to-prompt -g -y
```

## 📈 Leaderboard (skills.sh)

No manual signup. Installs via `npx skills add AJSubrizi/scratch-to-prompt` are counted anonymously and ranked on [skills.sh](https://skills.sh) over time. Share the install command to climb the board.

## 💬 Examples

**Claude Code**

```text
/scratch voglio creare una web app dove incolli un URL e ti genera un mega prompt per ricreare il sito
```

**Cursor**

```text
@scratch app per rappresentanti che trova clienti sulla mappa
```

**English**

```text
@scratch paste a URL and generate a phased prompt to rebuild the site with verification steps
```

## 🛠 Manual install (optional)

If you prefer shell scripts or are hacking on this repo:

```bash
git clone https://github.com/AJSubrizi/scratch-to-prompt.git
cd scratch-to-prompt
./install-all.sh    # Claude Code + Cursor + project copy
```

| Script | Installs to |
|--------|-------------|
| `./install.sh` | `~/.claude/skills/scratch` |
| `./install-cursor.sh` | `~/.cursor/skills/scratch` |

Same commands: **`/scratch`** and **`@scratch`**.

<details>
<summary><strong>Claude.ai (upload zip)</strong></summary>

1. Zip `skills/scratch/` (must include `SKILL.md`).
2. Upload as a project skill in Claude settings.
3. Invoke when your request matches the skill description (slash syntax may differ).

</details>

## 🗂️ Repository layout

```text
scratch-to-prompt/
├── skills/scratch/              ← edit here (source of truth)
│   ├── SKILL.md                 ← name: scratch (drives /scratch & npx)
│   ├── examples.md
│   └── references/
├── .cursor/skills/scratch/      ← synced project skill
├── install.sh · install-cursor.sh · install-all.sh
└── scripts/sync-project-skill.sh
```

| Item | Value |
|------|--------|
| GitHub | `AJSubrizi/scratch-to-prompt` |
| npx package | `npx skills add AJSubrizi/scratch-to-prompt` |
| Skill id | `scratch` |
| Invoke | `/scratch` · `@scratch` |

## 🛠 Contributing

1. Edit **`skills/scratch/`** only.  
2. `./scripts/sync-project-skill.sh`  
3. Open a PR.

## 🧹 Uninstall

```bash
npx skills remove scratch 2>/dev/null || true
rm -rf ~/.agents/skills/scratch ~/.claude/skills/scratch ~/.cursor/skills/scratch
```

## 📄 License

[MIT](LICENSE)

<p align="center">
  <sub>Built for people who think in scratch notes and ship in prompts.</sub>
</p>
