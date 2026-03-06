#!/usr/bin/env bash
set -euo pipefail

MAIN="math4cs-symbol-handbook-cn"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

cd "$SCRIPT_DIR"

rm -f \
	"$MAIN.aux" \
	"$MAIN.idx" \
	"$MAIN.ilg" \
	"$MAIN.ind" \
	"$MAIN.log" \
	"$MAIN.out" \
	"$MAIN.toc" \
	"$MAIN.xdv" \
	"$MAIN.synctex.gz"

xelatex "$MAIN.tex"
makeindex -s math4cs-index.ist "$MAIN.idx"
xelatex "$MAIN.tex"
xelatex "$MAIN.tex"