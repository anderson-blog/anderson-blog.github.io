---
layout: log
date: 11/10/2020
title: uma esolang para iniciantes?
tags: start programação
---

Durante essa pandemia eu resolvi resgatar um projeto que estava parado há alguns anos. O projeto era de uma linguagem de programação diferente em que fosse usado o menor número de caracteres para escrever um programa, porém, em que o código ficasse conciso e ao mesmo tempo continuasse inteligível, este último, normalmente é algo que as chamadas esolangs (ou linguagens de programação esotéricas) não se preocupam muito. No geral quanto mais críptico e "esotérico" o código final for, melhor a piada.
 
> <code>&>:1-:v v *_$.@&nbsp;<br>
&nbsp;^&nbsp;&nbsp;&nbsp;&nbsp;_$>\:^&nbsp;&nbsp;&nbsp;&nbsp;
</code>
<p class="q-desc">fatorial em befunge - oi?</p>
 
## inspiração
 
Sempre achei muito interessante a idéia de explorar os limites do que pode ser usado para programar um computador, e uma das esolangs mais populares sempre me facinou, o [brainfuck](https://esolangs.org/wiki/Brainfuck), nome apropriado para uma linguagem que só possui 8 comandos (<code>< > + - . , [ ]</code>) e todo o restante da tabela ASCII é ignorado e pode ser usado como comentário.
 
A linguagem bf se comporta como uma máquina de turing, onde uma "cabeça de leitura anda sob uma fita" e pode ler e escrever valores. A ideia é simples:
 
- a fita possui infinitas "casas" contendo o número <code>0</code>;
- você pode usar os comandos <code>> <</code> para "andar" para a direita ou esquerda;
- <code>+ -</code> para somar ou subtrair <code>1</code> do valor da casa atual;
- todo o código cercado por <code>[ ]</code> repete enquanto o valor da casa atual for diferente de <code>0</code>;
- você pode usar <code>. ,</code> para exibir o valor atual como ASCII ou ler um byte da entrada padrão.
 
Na pratica, a programação se torna um verdadeiro desafio.
 
> <code>++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.</code>
<p class="q-desc">exemplo de um hello world em bf</p>
 
 
## apresentação
 
 
A minha contribuição para o universo das esolangs é a linguagem <span class="selected">*T</span> (lê-se "start"). 

<span class="selected">*T</span> é uma linguagem de programação estruturada e interpretada em que a maior parte dos operadores possui apenas um caractere, dígitos são usados para constantes e letras maiúsculas são usadas para definir variáveis ou funções.

A biblioteca de funções padrão da linguagem varia de acordo com a plataforma. Atualmete existe um [interpretador online](/start-repl.html) com algumas funções para saída de texto. A linguagem ainda está sendo desenvolvida para ser executada em microcontroladores, de forma similar à [uLisp](http://www.ulisp.com/) ou [MicroPython](https://micropython.org/). Um dos proximos passos é montar alguns gadgets que possam ser programados direto no dispositivo (standalone). 
 
Na sequência você pode ver o diagrama de sintaxe da linguagem, um diagrama inspirado em mapas ferroviarios, lido da esquerda para a direita, e que representa todas as combinações válidas dos simobolos usados na linguagem. Se existe um caminho no mapa, então, ele é um programa válido e pode ser interpretado.

{% include close-wrapper.html %}
<img class="nb-img desktop-img" src="https://start-lang.github.io/core/grammar/railroad-svg/desktop_blog.svg">
<img class="nb-img mobile-img" src="https://start-lang.github.io/core/grammar/railroad-svg/mobile_blog.svg">
<p class="img-desc">diagrama de sintaxe / mapa ferroviario</p>
{% include open-wrapper.html %}
 
### operações

- NOP - Nenhuma operação
  - Qualquer caractere em branco (espaço, tab e quebra de linha) é ignorado
- Constante numérica
  - Uma sequência de números é sempre guardada no acumulador
  - Existem 4 comandos usados para definir o tipo em uso:
      - `b` 8bits sem sinal - padrão
      - `s` 16bits sem sinal
      - `i` 32bits sem sinal
      - `f` float 32bits
  - Exemplos:
     - `123` `b255` `s350` `f876`
- Operações de memória
  - `<` - Move a fita para a esquerda pelo tamanho do tipo
  - `>` - Move a fita para a direita pelo tamanho do tipo
  - `!` - Copia o valor do acumulador para a fita
  - `;` - Copia o valor da fita para o acumulador
  - `@` - Troca o valor da fita pelo valor do acumulador e vice-versa
  - `z` - Anda para a direita até encontrar um zero
  - `#` - Executa valores na fita como se fossem comandos
- Operações matematicas
  - `+` - Soma o valor do acumulador com o valor na fita
  - `-` - Subtrai o valor do acumulador do valor na fita
  - `*` - Multiplica o valor da fita pelo valor do acumulador
  - `/` - Divide o valor da fita pelo valor do acumulador
  - `%` - Guarda o resto da divisão do valor da fita pelo valor do acumulador na fita
- String
  - Sequencia de digitos cercados por aspas duplas `"`, aspas duplas internas devem ser precedidas de `\`
  - Sempre são salvas na fita em sequência e terminadas com o valor 0
  - Essa operação não move a fita, porém adicionando o comando `>` em sequência move a fita até o fim da string
- Identificadores
  - Qualquer sequência de letras maiúsculas representa um identificador
  - Identificadores podem conter `_` após a primeira letra
  - Caso o id seja de uma variável, então a fita é movida até ela
  - Caso o id seja de uma função, então a mesma é executada
  - No interpretador online existem 3 funções implementadas:
    - PC ou PRINT:
      - Imprime o valor do acumulador como caratere
    - PS ou PRINTSTR:
      - Imprime a fita atual como string (da posição atual até o primeiro `0`)
    - PN:
      - Imprime o valor do acumulador como número (depende do tipo usado)
- Variaveis
  - Posições da fita podem ser mapeadas para ids usando o operador `^` seguido do id
  - Exemplo:
      - `X^1!>2!>3!X;` - salva a primeira posição da fita como o id `X`, salva `1` na primeira casa, `2` na segunda e `3` na terceira, volta até a primeira casa usando o nome do id e lê o valor no acumulador, que é `1`
- Comparações
  - Existe um acumulador exclusivo para comparações que é usado pelas operações if e while
  - Todas as operações de comparação devem ser precedidas de `?`
  - A comparação é feita entre acumulador (esquerda) e fita (direita)
  - `>` - maior que
  - `<` - menor que
  - `=` - igual
  - `!` - diferente
  - `l` - menor ou igual
  - `g` - maior ou igual
  - `?` - diferente de zero
  - `z` - igual a zero
  - Exemplos:
      - `0@1?<` - `1` é menor que `0`? Falso
      - `1@1?<` - `1` é menor que `1`? Falso
      - `2@1?<` - `1` é menor que `2`? Verdadeiro
- If
  - Sintaxe: `(` `bloco1` `)` ou `(` `bloco1` `:` `bloco2` `)`
  - Usa o valor do acumulador de comparações para definir se o primeiro ou segundo bloco deve ser executado
  - O primeiro bloco é sempre executado caso o valor seja `1`
  - O segundo bloco é executado caso o valor seja `0` e o bloco não tenha sido omitido
  - Exemplo:
      - `2@1@?>(2:3)!` - salva `2` caso `2` seja maior que `1` caso contrario salve `3`, portanto `2` é salvo
- While
  - Sintaxe: `[` `bloco` `]`
  - `[` - entra no loop caso o valor do acumulador de comparações seja `1`
  - `]` - repete caso o valor do acumulador de comparações seja `1`
  - `c` - *continue* - volta ao inicio do loop
  - `x` - *break* - encerra o loop


> <code>i46!>0!>1!?=[2<1-?!2>;<@>+] PN</code>
<p class="q-desc">fibonacci de 46 em *T</p>
 
> <code>" 34! PC 32! PS 34! PC 35! PC"#</code>
<p class="q-desc"><a href="http://www.nyx.net/~gthompso/quine.htm">quine</a> em *T</p>

 
Se você achou interessante e gostou do desafio, eu sugiro dar uma olhada no [playground da linguagem](/start-repl.html), assim você pode testar o interpretador online. Se programar algo legal me mande um e-mail que eu coloco aqui como exemplo!
