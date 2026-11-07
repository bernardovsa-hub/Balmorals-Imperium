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

## Notas de trabalho

- A pasta está dentro do OneDrive, por isso o OneDrive sincroniza as alterações.
- Mudanças ao site fazem-se a editar diretamente o `index.html`.
- Convém dar commit no git a cada conjunto de alterações para manter histórico.
