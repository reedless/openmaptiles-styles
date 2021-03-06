#!/usr/bin/env bash
set -xeuo pipefail

STYLES_DIR="target/styles"
declare -A STYLES=( \
                    ["fiord"]="styles/fiord-color-gl-style/style.json" \
                    ["positron"]="styles/positron-gl-style/style.json" \
                    ["dark_matter"]="styles/dark-matter-gl-style/style.json" \
                    ["osm_bright"]="styles/osm-bright-gl-style/style.json" \
                    ["klokantech_basic"]="styles/klokantech-basic-gl-style/style.json" \
                    ["klokantech_3d"]="styles/klokantech-3d-gl-style/style.json" \
                    ["klokantech_terrain"]="styles/klokantech-terrain-gl-style/style.json" \
                    ["toner"]="styles/toner-gl-style/style.json" \
                    ["osm_liberty"]="styles/osm-liberty/style.json" \
                 )
mkdir -p "${STYLES_DIR}"

for STYLE in "${!STYLES[@]}"; do
  cp "${STYLES[$STYLE]}" "${STYLES_DIR}/${STYLE}.json"
done
