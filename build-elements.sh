#!/bin/bash

# 🔍 Scan and build Angular Elements from src/app/ui/
echo "🔧 Building Angular Elements from src/app/ui..."

COMPONENTS=$(ls src/app/ui)

for component in $COMPONENTS; do
  ELEMENT_NAME="element-${component}"
  echo "📦 Building: $ELEMENT_NAME"

  # Build single Angular Element from each component folder
  ng build $ELEMENT_NAME --configuration production --output-hashing=none
done

echo "✅ All elements built and ready in /dist/"
