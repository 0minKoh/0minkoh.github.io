#!/usr/bin/env bash

set -euo pipefail

project_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd -P)"
html_path="${project_dir}/_site/index.html"
pdf_path="${project_dir}/_site/resume.pdf"

if [[ ! -f "${html_path}" ]]; then
  echo "HTML output not found: ${html_path}" >&2
  exit 1
fi

chrome_path=""
for candidate in google-chrome google-chrome-stable chromium chromium-browser; do
  if command -v "${candidate}" >/dev/null 2>&1; then
    chrome_path="$(command -v "${candidate}")"
    break
  fi
done

if [[ -z "${chrome_path}" && -x "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" ]]; then
  chrome_path="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
fi

if [[ -z "${chrome_path}" ]]; then
  echo "Chrome or Chromium is required to create resume.pdf." >&2
  exit 1
fi

"${chrome_path}" \
  --headless=new \
  --disable-gpu \
  --no-pdf-header-footer \
  --allow-file-access-from-files \
  --print-to-pdf="${pdf_path}" \
  "file://${html_path}"

test -s "${pdf_path}"
