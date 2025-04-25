// scripts/generate-vercel-rewrites.js

const fs = require('fs');
const path = require('path');

const uiDir = path.join(__dirname, '../src/app/ui');
const rewrites = [];

fs.readdirSync(uiDir, { withFileTypes: true }).forEach((dirent) => {
  if (dirent.isDirectory()) {
    const name = dirent.name;
    rewrites.push({
      source: `/${name}-element/(.*)`,
      destination: `/dist/elements-${name}/$1`,
    });
  }
});

const vercelConfig = { rewrites };

fs.writeFileSync('vercel.json', JSON.stringify(vercelConfig, null, 2));

console.log('✅ Vercel rewrites generated based on src/app/ui/* components.');
