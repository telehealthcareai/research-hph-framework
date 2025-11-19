#!/usr/bin/env bash

set -ex

BASE_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && cd .. && pwd)"
PAPERS_DIR="${BASE_DIR}/papers"
OUTPUT_DIR="${PAPERS_DIR}"

# mkdir -p "${OUTPUT_DIR}"
# cp "${PAPERS_DIR}/jmiremu.sty" ${OUTPUT_DIR}

pdflatex --output-directory="${OUTPUT_DIR}" "${PAPERS_DIR}/manuscript.tex"
pdflatex --output-directory="${OUTPUT_DIR}" "${PAPERS_DIR}/plan.tex"
