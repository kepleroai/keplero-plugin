#!/bin/sh
# Builds the ZIP uploaded to the OpenAI plugin portal (platform.openai.com/plugins)
# from the committed files only, so no local junk (.DS_Store, drafts) gets in.
set -eu
cd "$(dirname "$0")/.."
version=$(node -p 'require("./plugin.json").version')
output="dist/keplero-plugin-${version}.zip"
mkdir -p dist
rm -f "$output"
git archive --format=zip --output="$output" HEAD -- \
  plugin.json mcp.json skills assets README.md LICENSE
echo "$output"
