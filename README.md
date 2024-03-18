# Transdutor: Tradutor de Código Morse

Código Morse foi uma invenção de Samuel Morse para o uso de sua outra invenção: o Telégrafo. Um telégrafo um sistema de comunicação inventado em 1840 usado para comunicação de grandes distâncias.

Um telégrafo consistia em duas estações com um telégrafo elétrico conectadas por fio. O telégrafo mais conhecido usava uma agulha que fechava um contato elétrico que emitia pulsos eletromagnéticos. Com o tempo os operadores começaram a interpretar os cliques e para isso foi necessário criar uma linguagem para a transmissão dos dados. Daí surgiu o Código Morse.

Apesar do desuso de Código Morse em telecomunicações, ainda há aplicações militares e tecnologias assistivas (usuários com deficiências que têm dificuldade em digitação).

# O Código Morse

Como o telégrafo simples só emite sons de vibrações, criou-se 2 símbolos base: O ponto "." como um clique rápido e o traço "-" como um clique contínuo. Também temos o espaço " " como marcador.

Com isso, gerou-se tabela do Código Morse Internacional.

Tradutor de código Morse: https://morsecode.world/international/translator.html

Como funciona:

Cada caracter é transmitido com um ponto "." ou traço "-". As palavras são separadas por um espaço em branco. Exemplo:

""-.-. --- -.. .. --. --- / -- --- .-. ... . / -.. . / . -..- . -- .--. .-.. -—" é traduzido para:

"Codigo Morse de exemplo"

# A Entrega
Nosso desafio é fazer um tradutor de Código Morse para caracteres comuns. Para isso, deve-se criar Autômato Finito Determinístico - Transdutor que faça o reconhecimento do Alfabeto = { ".", "-" e " " } 

Exemplo de um Autômato Determinístico simples:

Por questões de simplificação, nosso tradutor de Código Morse irá apenas considerar a tabela acima, com as seguintes simplificações:

- Caracteres de A-Z sem acentos
- Números de 0-9
- Caracteres especiais:  . , - ?
