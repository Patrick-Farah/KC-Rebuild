#!/usr/bin/env bash
set -euo pipefail

# Run from the KC-Rebuild repository root.
# This copies selected useful assets from the legacy KC repository into the clean rebuild structure.
# It avoids WordPress theme/plugin folders, wp-json dumps, RSS feeds, and generated HTML files.

mkdir -p public/images/brand
mkdir -p public/images/projects
mkdir -p public/images/products
mkdir -p public/images/certifications
mkdir -p public/documents/catalogues
mkdir -p public/documents/certificates

RAW_BASE="https://raw.githubusercontent.com/Patrick-Farah/KC/main"

fetch_asset() {
  local source_path="$1"
  local target_path="$2"
  echo "Fetching ${source_path} -> ${target_path}"
  curl -L --fail --silent --show-error "${RAW_BASE}/${source_path}" -o "${target_path}"
}

# Brand assets
fetch_asset "wp-content/uploads/2022/02/klimacontra-logo-horiz.png" "public/images/brand/klimacontra-logo-horiz.png" || true
fetch_asset "wp-content/uploads/2022/02/klimacontra-logo-horiz-1-copy-1.png" "public/images/brand/klimacontra-logo-horiz-1-copy-1.png" || true

# Initial project/hero assets referenced by the legacy homepage slider.
fetch_asset "wp-content/uploads/2024/12/king-salman.png" "public/images/projects/king-salman.png" || true
fetch_asset "wp-content/uploads/2024/12/Solitaire-mall.jpg" "public/images/projects/solitaire-mall.jpg" || true
fetch_asset "wp-content/uploads/2023/06/Trilogy-Project.jpg" "public/images/projects/trilogy-project.jpg" || true

# Initial product sample asset.
fetch_asset "wp-content/uploads/2022/09/KC-LSD.jpg" "public/images/products/kc-lsd.jpg" || true

echo "Legacy asset migration complete."
echo "Review copied assets, then run: git status"
