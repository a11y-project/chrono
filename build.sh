#!/bin/sh
# Génère dist/index.html : la même page que l'artifact Claude, mais en document HTML
# complet, à héberger tel quel (GitHub Pages, Netlify…) pour accéder aux capteurs.
cd "$(dirname "$0")"
mkdir -p dist
{
  printf '%s\n' '<!doctype html>'
  printf '%s\n' '<html lang="fr">'
  printf '%s\n' '<head>'
  printf '%s\n' '<meta charset="utf-8">'
  printf '%s\n' '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">'
  printf '%s\n' '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px);color-scheme:light}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%}[hidden]{display:none!important}</style>'
  printf '%s\n' '</head>'
  printf '%s\n' '<body>'
  cat index.html
  printf '%s\n' '</body>'
  printf '%s\n' '</html>'
} > dist/index.html
echo "dist/index.html généré"
