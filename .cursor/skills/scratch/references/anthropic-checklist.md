# Anthropic tutorial checklist (internal)

Map from [prompt-eng-interactive-tutorial](https://github.com/anthropics/prompt-eng-interactive-tutorial) — apply while building the final prompt.

| Chapter | Apply when refining |
|--------|---------------------|
| **01 Basic structure** | System/context/user blocks clear; one primary task per prompt |
| **02 Clear and direct** | Imperatives; no weasel words; measurable success criteria |
| **03 Role** | Expert persona matches task (engineer, PM, researcher, etc.) |
| **04 Data vs instructions** | User content in labeled blocks; instructions separate from pasted data |
| **05 Output format** | Explicit format: markdown, JSON schema, file list, sections, length |
| **06 Step-by-step** | Use CoT only for multi-step reasoning, planning, or debugging — not for trivial tasks |
| **07 Examples** | 1–3 few-shot examples if format or tone is ambiguous |
| **08 Anti-hallucination** | "If unknown, say so"; no fake URLs/stats; prefer tools/search when agent supports it |
| **09 Complex prompts** | Layer: role → context → task → constraints → output → quality bar |
| **10.1 Chaining** | For huge builds: suggest prompt sequence (plan → implement → review) in Optional improvements |
| **10.2 Tool use** | For Claude Code/Cursor: mention files to read, commands to run, verification steps |
| **10.3 RAG** | If external docs matter: specify what to attach or which sources to trust |

## Quick pass (30 seconds)

Before returning the final prompt, verify:

- [ ] A stranger could execute this without guessing the goal
- [ ] Output shape is specified (files, sections, schema, or checklist)
- [ ] Constraints and assumptions are explicit
- [ ] No contradictory instructions
- [ ] Language matches user (Italian unless asked otherwise)
