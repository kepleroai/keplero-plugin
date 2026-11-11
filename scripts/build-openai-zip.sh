#!/bin/sh
# Builds the ZIP uploaded to the OpenAI plugin portal (platform.openai.com/plugins)
# from the committed files only, so no local junk (.DS_Store, drafts) gets in.
# The Claude plugin lives in claude/ (the Anthropic directory scans that folder
# and refuses scripts and SVGs); the OpenAI manifest, its SVG icons and this
# script stay at the root. The ZIP keeps the flat layout plugin.json expects.
set -eu
cd "$(dirname "$0")/.."
version=$(node -p 'require("./plugin.json").version')
output="$PWD/dist/keplero-plugin-${version}.zip"
stage=$(mktemp -d)
trap 'rm -rf "$stage"' EXIT
git archive HEAD -- plugin.json mcp.json assets \
  claude/skills claude/assets claude/README.md claude/LICENSE | tar -x -C "$stage"
cp -R "$stage/claude/." "$stage/"
rm -rf "$stage/claude"
mkdir -p dist
rm -f "$output"
(cd "$stage" && zip -qrX "$output" plugin.json mcp.json skills assets README.md LICENSE)
echo "$output"
