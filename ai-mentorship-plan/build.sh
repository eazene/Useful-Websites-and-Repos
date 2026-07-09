#!/usr/bin/env bash
# Rebuild Ez_AI_Learning_Plan.pdf from the HTML source sections.
# Requires: Node.js + Playwright's Chromium (this repo was built with the
# pre-installed Chromium under /opt/pw-browsers). Adjust CHROME_BIN if needed.
set -euo pipefail
cd "$(dirname "$0")"

ORDER=(
  00-head 01-toc 02-howto 03-objectives 04-tools-budget
  05-timeline-a 06-timeline-b 07-milestones 08-glossary
  09-resources 10-extras-ce-verify
)

# concatenate sections into a single document
: > src/plan.html
for part in "${ORDER[@]}"; do
  cat "src/${part}.html" >> src/plan.html
done

node render.mjs "$(pwd)/src/plan.html" "$(pwd)/Ez_AI_Learning_Plan.pdf"
echo "Built Ez_AI_Learning_Plan.pdf"
