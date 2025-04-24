#!/usr/bin/env bash
#
# build-element.sh
# Interactive build script for multiple standalone components

# Prompt user for component names
read -p "⚙️  Please enter the component names to build (comma-separated, e.g., card-element,button-element): " comps
if [[ -z "$comps" ]]; then
  echo "✋ No component names provided – aborting."
  exit 1
fi

# Convert comma-separated list to array
IFS=',' read -r -a components <<< "$comps"

# Loop through each component and build it
for comp in "${components[@]}"; do
  echo "🚧 Building component '$comp' in production mode…"

  # Build the project with the specified component
  ng build hybrid-flight-components --configuration=production --output-path="dist/$comp" --base-href="/$comp/"

  # Check build status
  if [[ $? -eq 0 ]]; then
    echo "✅ Component '$comp' built successfully."
  else
    echo "❌ Build failed for component '$comp'."
    exit 1
  fi
done