---
layout: link
title: volumetric circuits
type: projeto
tags: volumetric_circuits
date: 20/01/2016
link: https://hackaday.io/project/2396-volumetric-circuits
video: true
---

Durante os anos que fiz ensino médio e técnico em informática adorava conversar sobre ciência, tecnologia e os mais diversos assuntos com uma das minhas melhores amigas, Taly. Quando estávamos perto de nos formar, decidimos ir para a área de computação, ela para ciência da computação e eu para engenharia. Como íamos para diferentes cidades/estados eu pensei em fazer algum presente feito a mão para ela. Mal sabia que isso ia me levar em um caminho bem longo e interessante. 
 
Nessa época eu estava estudando um pouco sobre como um computador funcionava, nisso descobri como eram feitas contas usando portas lógicas, pensei que seria bem legal ter um dispositivo que somasse um número binário ou algo do tipo. Eu nunca tinha feito placas de circuito impresso então comecei a estudar como eu poderia fazer algo complexo com os materiais que eu tinha em mãos. 
 
Eu já tinha feito um curso de manutenção de computadores, esse era um hobby meu, e em casa tinha várias peças. Eu não tinha uma protoboard para testar os circuitos e portas lógicas que eu tinha visto na internet, mas tive uma ideia de como improvisar uma: 
 
![](/assets/gallery/pcb/img15.webp)
<p class="q-desc">Usando um cabo flat IDE e alguns pedaços de fio de telefone eu improvisei minha primeira protoboard</p>
 
Gostaria de ter uma foto do primeiro circuito que eu fiz, provavelmente foi uma porta NOT, usando um transistor, uma bateria de 9v, alguns resistores e um LED. Foi bem divertido montar a porta lógica e vê-la funcionar pela primeira vez.
 
Percebi que não ia ser muito simples montar circuitos complicados usando esse jeito. Foi aí que eu tomei conhecimento do [primeiro computador construído dentro do jogo Minecraft](https://hackaday.com/2010/09/29/16-bit-alu-in-minecraft/), ele usava os mesmos conceitos de portas lógicas mas era construído em todas as direções, em três dimensões. Foi aí que eu pensei o quanto seria bacana ter uma escultura que representasse o funcionamento de uma unidade lógica aritmética. Seria incrível, mas como tornar isso possível já que ela teria talvez centenas de componentes?

![](/assets/img/volumetric-circuits/img8.webp)
 
Foi então que surgiu o conceito dos circuitos volumétricos, passaram-se alguns anos e comecei a planejar um software que pudesse servir como um CAD para circuitos em 3D. Nisso eu já tinha brincado um pouco com gráficos 3D depois de ter participado da LARC na categoria [3D simulation league](https://github.com/anderson-/JRCSS3DMonitor). 
 
Eu comecei a portar para SWING o [simulador de circuitos do Falstad](https://www.falstad.com/circuit/), e usei algumas libs para exibir de forma bem detalhada cada passo do processo de converter um circuito simulado em uma dobradura tridimensional.
 
![](/assets/img/volumetric-circuits/1112391408582649599.png)

O resultado disso foram alguns experimentos para explorar o conceito. Disso até mesmo surgiu a ideia de uma protoboard 3D que poderia ser usada para testar os circuitos antes de começar a soldar.
 
![](/assets/img/volumetric-circuits/img23.webp)
 
Esse projeto me rendeu uma posição nas quartas de final do hackaday prize 2014 junto com um post no [blog](https://hackaday.com/2014/09/13/volumetric-circuits/). O nome "curcuitos voluméricos" veio da ideia de [_display volumétrico_](https://hackaday.com/2014/04/09/gaming-on-an-8x8x8-led-cube/) construido usando leds em uma matriz tridimensional.
 
{% include youtube-player.html youtube="MPQweuTs4i8" %}
 
Pela complexidade de se desenvolver um algoritmo que resolvesse bem esse problema, eu acabei nunca terminando o objetivo inicial do projeto. Já recomecei e parei esse projeto algumas vezes ao longo dos anos, ele é sem dúvida um dos meus projetos preferidos para parar e pensar sobre.
 
Recentemente foi publicado um artigo com uma proposta de algoritmo muito interessante que eu acho que poderia até mesmo resolver esse projeto, mas ainda não tive tempo para brincar com isso, quem sabe em breve.


Pagina do projeto no hackaday.io
