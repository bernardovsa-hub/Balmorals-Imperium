# Publica o site balmoralsimperium.com no Netlify (producao).
# Uso:  powershell -File deploy.ps1 "mensagem opcional do deploy"
# Monta uma pasta limpa (so os ficheiros do site, sem venv/backups/git) e publica.

$ErrorActionPreference = "Stop"
$env:Path = "C:\Program Files\nodejs;$env:AppData\npm;" + $env:Path

$SITE_ID = "95fe677d-6e5a-47db-9482-5f5fe1e793e1"   # balmoralsimperium.com (creative-pothos-91597b)
$root = $PSScriptRoot
$stage = Join-Path $env:TEMP "balmoral_deploy"

if (Test-Path $stage) { Remove-Item $stage -Recurse -Force }
New-Item -ItemType Directory -Path $stage | Out-Null

# Ficheiros do site a publicar
Copy-Item "$root\index.html"   $stage
Copy-Item "$root\robots.txt"   $stage
Copy-Item "$root\sitemap.xml"  $stage
Copy-Item "$root\sitemap.html" $stage
Copy-Item "$root\imagens"      $stage -Recurse

$msg = if ($args.Count -gt 0) { $args -join ' ' } else { "Atualizacao do site" }

Write-Host "A publicar para balmoralsimperium.com..." -ForegroundColor Cyan
netlify deploy --prod --dir $stage --site $SITE_ID --message $msg

Remove-Item $stage -Recurse -Force
Write-Host "Concluido." -ForegroundColor Green
