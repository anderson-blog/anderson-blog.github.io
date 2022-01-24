---
layout: default
---

# Como postar no site

Essa página é só para eu não esquecer como usar o site xD

## Imagens

- Cortar a imagem e converter para *.jpg
- Colocar as imagens em assets/tmp
- Rodar o script compress.sh

> Se a imagem for colocada em assets/img/.../*.jpg então ela não aparece na galeria e pode ser incluída 
em um post usando a variável-array images ou usando !&#91;&#93;(/assets/*.jpg)

> Se a imagem for colocada em assets/gallery/&lt;tag&gt;/*.jpg então ela aparece na galeria e pode ser 
incluída em um post usando a variável-array images, caso não exista um post usando a imagem então é 
redirecionado para a página de tags

## Variaveis

- layout: Layout base utilizado (link\log\none\video\image\post)
- title: Titulo do post
- type[opcional]: Sobrescreve o nome do layout usado no menu de posts
- tags: Tags usadas
- date: Data do post
- link[opcional]: Link para uma página externa
- images[opcional]: Exibe galeria lateral com imagens

### Link
- layout: link
- title: tact-tiles
- link: https://hackaday.io/project/4812-tact-tiles