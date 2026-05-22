---
name: scratch
description: >-
  Turns rough ideas, messy notes, or incomplete project concepts into clear,
  structured, production-ready prompts for Claude, Claude Code, Codex, Cursor,
  or other AI agents. Use when the user invokes /scratch or @scratch, says
  "scratch to prompt", shares a vague product or coding idea, or wants an
  agent-ready prompt from scratch thinking.
disable-model-invocation: true
---

# Scratch to Prompt

Turn **scratch thinking** into a prompt another AI agent can execute.

## Cursor

In Cursor Agent, run when the user mentions **@scratch**, **scratch to prompt**, or asks to turn a rough idea into a prompt for Codex/Cursor/Claude. Do not auto-apply on unrelated tasks.

Based on [Anthropic's Prompt Engineering Tutorial](https://github.com/anthropics/prompt-eng-interactive-tutorial). Do not dump the tutorial — apply it as an internal checklist (see [references/anthropic-checklist.md](references/anthropic-checklist.md) when refining).

## Core behavior

When invoked, analyze the user's idea and produce a polished prompt. Do not paraphrase their words — **improve** the idea:

- Be clear and direct
- Separate instructions from context
- Assign the right role to the target agent
- Define output format explicitly
- Add constraints and stated assumptions
- Use step-by-step reasoning only when it helps
- Add few-shot examples only when they reduce ambiguity
- Reduce hallucination risk (cite limits, ask vs invent)
- Turn vague goals into concrete deliverables

## Workflow

1. **Objective** — What outcome does the user actually want?
2. **Target agent** — Claude, Claude Code, Codex, Cursor, Windsurf, generic, or unknown (infer if omitted)
3. **Prompt type** — coding, product, design, research, refactor, debug, marketing, docs, or other
4. **Expand** — Fill gaps with reasonable assumptions; preserve intent and tone
5. **Checklist** — Run [references/anthropic-checklist.md](references/anthropic-checklist.md) mentally; fix gaps
6. **Deliver** — Output structure below + copy-paste-ready final prompt

Ask **at most one** blocking question if a missing detail would change architecture or scope materially. Otherwise assume and state assumptions.

## Output format (always)

### Refined understanding

2–4 sentences: what they are building, for whom, and what success looks like.

### Recommended prompt

```text
[Final optimized prompt — complete, no placeholders like "TBD" unless unavoidable]
```

### Optional improvements

3–7 concise bullets to strengthen the prompt further (not a second full prompt).

## Prompt skeleton

Use this inside the final prompt when relevant:

```text
You are an expert [role].

I want to build / create / improve:
[clear project description]

Context:
[background and why this matters]

Goal:
[main outcome]

Requirements:
- [requirement 1]
- [requirement 2]

Constraints:
- [technical / business / design constraints]

Expected output:
- [files, plan, code, UI, report, etc.]

Quality bar:
- Production-ready where applicable
- Clear naming; minimal placeholders
- Explain important decisions briefly
- Do not invent unsupported facts
- Ask only if a blocking detail is missing; otherwise state assumptions

Now produce:
1. [deliverable 1]
2. [deliverable 2]
3. [deliverable 3]
```

## Type-specific additions

**Coding** — stack, folder structure, core features, edge cases, tests, security, deployment, README.

**UI / product** — target user, main flow, key screens, visual direction, components, MVP scope, later features; pricing only if relevant.

**Research / AI** — hypothesis, baseline, method, data, evaluation, failure modes, reproducibility; no inflated benchmark claims.

## Rules

- No generic or marketing-fluff prompts
- Concrete, executable instructions
- **Italian input → Italian output** unless the user asks for English
- Optimize tone and structure for the **named target agent**
- "Mega prompt" = detailed but still sectioned and scannable

## Examples

See [examples.md](examples.md).
