# Scratch to Prompt

**Tagline:** Turn messy ideas into agent-ready prompts.

| Platform | Invoke | Install |
|----------|--------|---------|
| **Claude Code** | `/scratch <idea>` | `./install.sh` |
| **Cursor** | `@scratch` or mention *scratch to prompt* | `./install-cursor.sh` |
| **Claude.ai** | Upload skill zip | See below |

Principles from [Anthropic's Interactive Prompt Engineering Tutorial](https://github.com/anthropics/prompt-eng-interactive-tutorial) — operational checklist, not a notebook copy.

## Quick start

```bash
git clone https://github.com/YOUR_USER/scratch-to-prompt.git
cd scratch-to-prompt
./install-all.sh   # Claude Code + Cursor user + project copy
```

Or pick one:

```bash
./install.sh          # ~/.claude/skills/scratch
./install-cursor.sh   # ~/.cursor/skills/scratch
```

## Claude Code

```bash
./install.sh
```

Restart Claude Code:

```text
/scratch voglio creare una web app dove incolli un URL e ti genera un mega prompt per ricreare il sito
```

## Cursor

**User skill (all projects):**

```bash
./install-cursor.sh
```

Restart Cursor or open a new Agent chat, then:

```text
@scratch app per rappresentanti che trova clienti sulla mappa
```

Or write: *usa scratch to prompt per…*

**Project skill (this repo only):** `.cursor/skills/scratch/` is included in the clone. After editing `skills/scratch/`, run:

```bash
./scripts/sync-project-skill.sh
```

## Claude.ai (project skill)

1. Zip the `skills/scratch/` folder (`SKILL.md` must be inside the zip).
2. Upload in project skill settings.
3. Invoke by description or name; slash syntax may differ from Claude Code.

## Repository layout

```text
scratch-to-prompt/
├── LICENSE
├── README.md
├── install.sh              # Claude Code → ~/.claude/skills/scratch
├── install-cursor.sh       # Cursor → ~/.cursor/skills/scratch
├── install-all.sh          # All targets
├── scripts/
│   └── sync-project-skill.sh
├── skills/scratch/         # canonical source (edit here)
│   ├── SKILL.md
│   ├── examples.md
│   └── references/
│       └── anthropic-checklist.md
└── .cursor/skills/scratch/ # project skill (synced from skills/scratch)
```

## Naming

| Item | Value |
|------|--------|
| GitHub repo | `scratch-to-prompt` |
| Skill folder | `scratch` |
| Skill id (`name`) | `scratch-to-prompt` |
| Public name | Scratch to Prompt |

## Push to GitHub

```bash
cd scratch-to-prompt
git init
git add .
git commit -m "Initial release: Scratch to Prompt skill for Claude Code and Cursor"
git branch -M main
git remote add origin git@github.com:YOUR_USER/scratch-to-prompt.git
git push -u origin main
```

Replace `YOUR_USER` with your GitHub username after creating the empty repo.

## Uninstall

```bash
rm -rf ~/.claude/skills/scratch ~/.cursor/skills/scratch
```

## Contributing

Edit files under `skills/scratch/` only, then:

```bash
./scripts/sync-project-skill.sh
```

Re-run `./install.sh` and/or `./install-cursor.sh` to refresh local installs.
