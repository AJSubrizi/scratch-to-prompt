# Scratch to Prompt — examples

## Example 1: One-line product idea (Italian)

**Input:** `/scratch app per rappresentanti che trova clienti sulla mappa`

**Refined understanding:** Field-sales reps need a map-first web app to discover and log prospects near their route, with offline-friendly notes and quick follow-up actions.

**Recommended prompt (excerpt):** Role = full-stack engineer; MVP = map, geolocation, lead pins, visit status, mobile-responsive UI; stack left as assumption with stated defaults; deliverables = architecture, file tree, implement core screens, test plan.

## Example 2: Coding agent (English)

**Input:** `/scratch paste a URL and generate a mega prompt to rebuild the site with Claude`

**Target:** Claude Code. **Type:** coding + tool use. Include: fetch/read steps, component inventory, design tokens inference, phased rebuild (scaffold → pages → polish), anti-hallucination for assets not visible in HTML.

## Example 3: Messy notes

**Input:** notes about "AI tutor for kids, parents dashboard, COPPA, subscription"

**Infer:** product + compliance constraints. Expand: age bands, parent consent flow, content moderation, subscription tiers as assumptions. Optional improvements: split into legal review prompt + MVP build prompt (chaining).
