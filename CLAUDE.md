# Balmoral's Imperium — site

Site institucional de **Balmoral's Imperium**, criação responsável de Cavalier King
Charles Spaniel em Portugal. Site: https://www.balmoralimperium.com

## Como está construído

- **Página única estática.** Todo o site é o `index.html` — não há build, framework
  nem servidor. Abre-se diretamente no browser.
- **CSS e JS estão inline** dentro do `index.html` (bloco `<style>` no `<head>` e um
  bloco `<script>` no fim do `<body>`). As pastas `css/` e `js/` existem mas estão vazias.
- Tipos de letra via Google Fonts (Cormorant Garamond, Playfair Display, Lato) e
  ícones via Font Awesome (CDN).
- Idioma: Português (`<html lang="pt">`).

## Estrutura da página (secções do `index.html`)

| id          | Secção                                  |
|-------------|-----------------------------------------|
| `inicio`    | Hero / topo                             |
| `sobre`     | Sobre nós                               |
| `caes`      | Os cães (reprodutores)                  |
| `filosofia` | Filosofia de criação                    |
| `galeria`   | Galeria de fotos                        |
| `contacto`  | Contactos                               |
| (instagram) | Ligação ao Instagram                    |
| (partner)   | Destaque de parceiro                    |

## Pastas e ficheiros

- `index.html` — o site.
- `imagens/` — fotos usadas no site (cães, galeria).
- `css/`, `js/` — vazias (tudo está inline no HTML por agora).
- `robots.txt`, `sitemap.xml`, `sitemap.html` — SEO.
- `index_backup_*.html`, `index_saved_*.html` — backups manuais antigos. Já são
  redundantes agora que há git; podem ser removidos quando o utilizador confirmar.
- `venv/` — ambiente Python vazio, não faz parte do site (ignorado pelo git).

## Como ver o site localmente

Não precisa de servidor — basta abrir o `index.html`. Para pré-visualizar com um
servidor local usa-se a configuração em `.claude/launch.json` (serve a pasta na
porta 5500).

## Como publicar (pôr ao vivo)

- **Domínio ao vivo:** https://balmoralsimperium.com (atenção: é com **"s"** —
  balmoral**s**imperium.com).
- **Alojamento:** Netlify, site `creative-pothos-91597b`
  (ID `95fe677d-6e5a-47db-9482-5f5fe1e793e1`, equipa "Balmoral's Imperium").
  Publicação por **deploy manual** via Netlify CLI (não está ligado ao GitHub).
- **Publicar:** correr o script, que monta uma pasta limpa (sem `venv`/backups) e
  faz o deploy de produção:

  ```powershell
  powershell -File deploy.ps1 "mensagem do deploy"
  ```

  Requer o Netlify CLI (`npm i -g netlify-cli`) e estar autenticado
  (`netlify login`, conta bernardovsa@gmail.com). O Node.js está instalado em
  `C:\Program Files\nodejs`.
- **Nota:** o `robots.txt`/`sitemap.xml` apontam para `balmoralimperium.com` (sem
  "s"), diferente do domínio real `balmoralsimperium.com` — rever quando houver tempo.

## Backup no GitHub (controlo de versões online)

- Repositório: **bernardovsa-hub/Balmorals-Imperium** (branch `main`), ligado como
  `origin`. É só backup/histórico — **não** publica o site (ver secção de publicar).
- Conta GitHub para o push: **bernardovsa-hub** (não confundir com a BleckAviation,
  que também está autenticada no `gh` deste PC).
- Enviar alterações: `git push` (o upstream já está configurado).

## Notas de trabalho

- A pasta está dentro do OneDrive, por isso o OneDrive sincroniza as alterações.
- Mudanças ao site fazem-se a editar diretamente o `index.html`.
- Convém dar commit no git a cada conjunto de alterações para manter histórico.
