# AI Fluency for Scientific Research — Mentorship Learning Plan

A personalized, one-hour-a-day learning plan that takes an MD/PhD neuroscience
student (Ezechukwu "Ez" Nduka, Vanderbilt) from AI newcomer to locally-expert
practitioner in ~6 months, anchored on Anthropic's Claude and using best-in-class
non-Anthropic tools where they win.

## The deliverable

**[`Ez_AI_Learning_Plan.pdf`](./Ez_AI_Learning_Plan.pdf)** — a 41-page plan containing:

1. **The written plan** — executive summary, detailed table of contents, nine
   competency domains with end-state learning objectives and a self-assessment
   rubric, a phased 26-week timeline (Phases 0–8) with lab-tailored hands-on
   exercises, and eight self-scored milestones plus a capstone.
2. **A glossary** of ~60 AI terms in plain English.
3. **A curated resource list** of everything used in the plan (verified links,
   costs), plus a short "if he has extra time" list.
4. **A ruthless continuing-education shortlist** (2 podcasts, 2 newsletters).

All resources were verified against the live web in July 2026. Two integrity
rules run through the whole plan: **never let a chatbot invent a citation**, and
**never generate imagery that could pass as experimental data.**

## Rebuilding the PDF

The PDF is generated from modular HTML section files in [`src/`](./src/) via
headless Chromium.

```bash
./build.sh
```

`render.mjs` points at the Chromium/headless-shell binary that shipped in the
build environment; update the `executablePath` if you run it elsewhere.
Edit the files in `src/` and re-run `build.sh` to regenerate.
