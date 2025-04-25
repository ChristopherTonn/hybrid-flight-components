#!/bin/bash

echo "🧩 Component folder name (e.g. card):"
read COMP

# Capitalize first letter for class name
COMP_CAP="${COMP^}"

# Check if project already exists
if [ -d "projects/elements-$COMP" ]; then
  echo "⚠️  Project 'elements-$COMP' already exists. Skipping generation."
else
  echo "🚀 Generating project 'elements-$COMP'..."
  ng generate application elements-$COMP \
    --style css \
    --routing false \
    --standalone \
    --skip-tests \
    --inline-style \
    --inline-template \
    --skip-install \
    --interactive false
fi

MAIN="projects/elements-$COMP/src/main.ts"

# Write main.ts only if path exists
if [ -d "projects/elements-$COMP/src" ]; then
  echo "📝 Creating custom main.ts..."
  cat <<EOF > $MAIN
import { createCustomElement } from '@angular/elements';
import { bootstrapApplication } from '@angular/platform-browser';
import { ${COMP_CAP}Component } from '../../../src/app/ui/${COMP}/${COMP}.component';

bootstrapApplication(${COMP_CAP}Component).then(appRef => {
  const el = createCustomElement(${COMP_CAP}Component, { injector: appRef.injector });
  customElements.define('app-${COMP}', el);
});
EOF
  echo "✅ Element project 'elements-$COMP' created and linked to ${COMP_CAP}Component"
else
  echo "❌ Skipped writing main.ts – directory not found!"
fi

echo "➡️ Next step: Make sure your component exists under 'src/app/ui/${COMP}/'"
