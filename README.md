# Scratch to Prompt

<p align="center">
  <strong>Turn messy ideas into agent-ready prompts.</strong><br>
  A small skill for Claude Code, Cursor, and Claude — built on Anthropic’s prompt-engineering principles.
</p>

<p align="center">
  <a href="https://github.com/AJSubrizi/scratch-to-prompt/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License: MIT"></a>
  <a href="https://github.com/anthropics/prompt-eng-interactive-tutorial"><img src="https://img.shields.io/badge/based%20on-Anthropic%20Tutorial-orange" alt="Based on Anthropic Tutorial"></a>
</p>

---

You scribble a half-formed idea. **Scratch to Prompt** turns it into a structured, copy-paste-ready prompt — with context, constraints, deliverables, and a quality bar — so Claude, Codex, or Cursor can actually execute it.

Inspired by [Anthropic’s Interactive Prompt Engineering Tutorial](https://github.com/anthropics/prompt-eng-interactive-tutorial). This repo is the **checklist and workflow**, not a copy of the notebooks.

## ✨ What you get

Every run returns:

1. **Refined understanding** — what you’re really trying to build  
2. **Recommended prompt** — ready to paste into your agent  
3. **Optional improvements** — 3–7 concrete ways to make it stronger  

The skill applies prompt-engineering basics internally: clarity, roles, separated context, output format, step-by-step when useful, few-shot when needed, and anti-hallucination guardrails.

## 🚀 Quick install

```bash
git clone https://github.com/AJSubrizi/scratch-to-prompt.git
cd scratch-to-prompt
./install-all.sh
```

| Platform | How to invoke | Install only |
|----------|---------------|--------------|
| **Claude Code** | `/scratch <your idea>` | `./install.sh` |
| **Cursor** | `@scratch` or ask for *scratch to prompt* | `./install-cursor.sh` |
| **Claude.ai** | Upload `skills/scratch/` as a zip | See [Claude.ai](#claudeai) |

Restart the app after installing, then try one of the [examples](#-examples) below.

## 💬 Examples

**Claude Code**

```text
/scratch voglio creare una web app dove incolli un URL e ti genera un mega prompt per ricreare il sito
```

**Cursor**

```text
@scratch app per rappresentanti che trova clienti sulla mappa
```

**English, coding agent**

```text
@scratch paste a URL and generate a phased prompt to rebuild the site with proper component inventory and verification steps
```

## 📖 Platform guides

<details>
<summary><strong>Claude Code</strong></summary>

```bash
./install.sh
```

Installs to `~/.claude/skills/scratch`. Restart Claude Code, then use `/scratch` followed by your idea.

</details>

<details>
<summary><strong>Cursor</strong></summary>

**All projects (recommended)**

```bash
./install-cursor.sh
```

Installs to `~/.cursor/skills/scratch`. Use `@scratch` in Agent chat.

**This repo only**

The folder `.cursor/skills/scratch/` is included when you clone. After editing the canonical skill, sync:

```bash
./scripts/sync-project-skill.sh
```

</details>

<details>
<summary><strong>Claude.ai</strong></summary>

1. Zip the contents of `skills/scratch/` (must include `SKILL.md`).
2. Upload as a project skill in Claude settings.
3. Invoke by name or when your request matches the skill description.

</details>

## 🗂️ Repository layout

```text
scratch-to-prompt/
├── skills/scratch/              ← edit here (source of truth)
│   ├── SKILL.md
│   ├── examples.md
│   └── references/
│       └── anthropic-checklist.md
├── .cursor/skills/scratch/      ← project skill (synced)
├── install.sh                   → ~/.claude/skills/scratch
├── install-cursor.sh            → ~/.cursor/skills/scratch
├── install-all.sh
└── scripts/sync-project-skill.sh
```

| Item | Value |
|------|--------|
| Command / mention | `/scratch` · `@scratch` |
| Skill id | `scratch-to-prompt` |
| Folder name | `scratch` |

## 🛠 Contributing

1. Change files under **`skills/scratch/`** only.  
2. Run `./scripts/sync-project-skill.sh`.  
3. Re-run `./install.sh` and/or `./install-cursor.sh` to refresh local installs.  
4. Open a PR.

## 🧹 Uninstall

```bash
rm -rf ~/.claude/skills/scratch ~/.cursor/skills/scratch
```

## 📄 License

[MIT](LICENSE) — use freely, attribution appreciated.

<p align="center">
  <sub>Built with ☕ for people who think in scratch notes and ship in prompts.</sub>
</p>
