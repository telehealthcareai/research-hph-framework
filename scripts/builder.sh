#!/usr/bin/env bash

set -ex

BASE_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && cd .. && pwd)"
PAPERS_DIR="${BASE_DIR}/papers"
OUTPUT_DIR="${PAPERS_DIR}"

cd "${PAPERS_DIR}"

rm -f *.aux *.bbl *.blg *.lof *.lot *.toc *.out

# mkdir -p "${OUTPUT_DIR}"
# cp "${PAPERS_DIR}/jmiremu.sty" ${OUTPUT_DIR}

pdflatex --output-directory="${OUTPUT_DIR}" "${PAPERS_DIR}/manuscript.tex"
pdflatex --output-directory="${OUTPUT_DIR}" "${PAPERS_DIR}/plan.tex"

bibtex "manuscript"
bibtex "plan"

pdflatex --output-directory="${OUTPUT_DIR}" "${PAPERS_DIR}/manuscript.tex"
pdflatex --output-directory="${OUTPUT_DIR}" "${PAPERS_DIR}/plan.tex"

pdflatex --output-directory="${OUTPUT_DIR}" "${PAPERS_DIR}/manuscript.tex"
pdflatex --output-directory="${OUTPUT_DIR}" "${PAPERS_DIR}/plan.tex"
