# Rede-Neural-Perceptron-Multicamadas-MLP-.
O projeto consiste no desenvolvimento e na implementação física de uma Rede Neural Artificial do tipo Multilayer Perceptron (MLP) puramente em hardware digital.

O peso '0' corta a entrada, o '1' deixa a entrada passar direto, e o '-1' usa a lógica de Complemento de 2 (passa por portas NOT e soma 1).

MLP_LOSANGO E MLP_QUADRADO SÓ ATIVAM SE O PONTO ESTIVER DENTRO DAS 4 PAREDES (OS 4 CÁLCULOS; OS 4 BLOCOS; DO QUADRADO E DO LOSANGO). COLOQUEI 4 PORTAS ANDs PRA ATIVAR SE TUDO FOR VERDADEIRO DE CADA MLP.


MLP_LOSANGO (CÁLCULO)

NEURÔNIO_H1 (VERIFICA: (1 * X) + (1 * Y) + bias >= 0 [ATIVA 1 SE VERDADEIRO; ATIVA 0 SE FOR FALSO]): BLOCO SOMADOR = X + Y: BLOCO SUBTRATOR: (X + Y) - 22: SAIDA FINAL / SAIDA_H1 = (X + Y) - 22
NEURÔNIO_H2 (VERIFICA: (-1 * X) + (-1 * Y) + bias >= 0 [ATIVA 1 SE VERDADEIRO; ATIVA 0 SE FOR FALSO]): BLOCO SOMADOR = X + Y: BLOCO SUBTRATOR: 42 - (X + Y): SAIDA FINAL / SAIDA_H2 = 42 - (X + Y)
NEURÔNIO_H3 (VERIFICA: (-1 * X) + (1 * Y) + bias >= 0 [ATIVA 1 SE VERDADEIRO; ATIVA 0 SE FOR FALSO]): BLOCO SUBTRATOR = Y - X: BLOCO SOMADOR = (Y - X) + 10: SAIDA FINAL / SAIDA_H3 = (Y - X) + 10
NEURÔNIO_H4 (VERIFICA:  (1 * X) + (-1 * Y) + bias >= 0 [ATIVA 1 SE VERDADEIRO; ATIVA 0 SE FOR FALSO]): BLOCO SUBTRATOR = X - Y: BLOCO SOMADOR = (X - Y) + 10: SAIDA FINAL / SAIDA_H4 = (X - Y) + 10


MLP_QUADRADO (CÁLCULO)

NEURÔNIO_H1 (VERIFICA SE X >= 10 [ATIVA 1 SE VERDADEIRO; ATIVA 0 SE FOR FALSO]): BLOCO SOMADOR = X + 0: BLOCO SUBTRATOR: (X + 0) - 10: SAIDA FINAL / SAIDA_H1 = X - 10
NEURÔNIO_H2 (VERIFICA SE X =< 22 [ATIVA 1 SE VERDADEIRO; ATIVA 0 SE FOR FALSO]): BLOCO SOMADOR = X + 0: BLOCO SUBTRATOR: 22 - (X + 0): SAIDA FINAL / SAIDA_H2 = 22 - X
NEURÔNIO_H3 (VERIFICA SE Y >= 10 [ATIVA 1 SE VERDADEIRO; ATIVA 0 SE FOR FALSO]): BLOCO SOMADOR = 0 + Y: BLOCO SUBTRATOR = (0 + Y) - 10: SAIDA FINAL / SAIDA_H3 = Y - 10
NEURÔNIO_H4 (VERIFICA SE Y =< 22 [ATIVA 1 SE VERDADEIRO; ATIVA 0 SE FOR FALSO]): BLOCO SOMADOR = 0 + Y: BLOCO SUBTRATOR = 22 - (0 + Y): SAIDA FINAL / SAIDA_H4 = 22 - Y

MSB DA SAIDA DO SUBTRATOR OU SOMADOR PASSANDO POR UMA PORTA NOT E CONECTANDO EM UM PINO DE SAIDA DE CADA NEURÔNIO (LOSANGO_NEURÔNIO_H1_H2_H3_H4 E QUADRADO_NEURÔNIO_H1_H2_H3_H4)

A porta NOT conectada ao MSB atua como a nossa função de ativação. O circuito exige que o neurônio dispare (saída 1) quando a conta for maior ou igual a zero. Como o bloco matemático trabalha com sinal, o MSB sai como '0' em resultados positivos e '1' em resultados negativos. Eu passei o MSB pela porta NOT justamente para inverter isso: ela transforma o '0' da conta positiva no '1' lógico que ativa a saída do neurônio."

Resumo da lógica:
Conta >= 0 -> MSB é 0 -> Passa na NOT -> Saída 1 (Ativou)
Conta < 0 -> MSB é 1 -> Passa na NOT -> Saída 0 (Desativou)

MLP_LOSANGO

O neurônio de saída do bloco Losango age como um juiz final (uma porta AND). Ele só libera a saída final como "1" se todos os 4 neurônios anteriores disserem "1" ao mesmo tempo. Se apenas um deles disser "0" (Falso), a figura toda é reprovada.

MLP_QUADRADO

O neurônio de saída do Quadrado só vai liberar "1" se esses 4 neurônios acima derem "1" ao mesmo tempo, provando que o ponto está cercado pelas 4 paredes.

O neurônio de saída do Quadrado só vai liberar 1 se os 4 neurônios das paredes retas derem 1 ao mesmo tempo. O neurônio de saída do Losango faz a mesma coisa para as 4 paredes diagonais. No nível final do projeto, o circuito junta essas duas respostas: a saída principal só vai ser 1 (acendendo o LED) se o Quadrado e o Losango liberarem 1 juntos, provando que a coordenada bateu com todas as 8 paredes e formou o nosso Octógono.

Se for Verdadeiro: O cálculo matemático dá um resultado maior ou igual a zero (a coordenada está do lado certo da parede). O circuito "aprova" e a saída do neurônio vai para 1.

Se for Falso: O cálculo dá menor que zero (a coordenada cruzou a parede e está do lado errado). O circuito "reprova" e a saída vai para 0.


O projeto possui 5 saídas no total. Quatro delas são barramentos de 7 bits para os displays, necessários porque as nossas coordenadas vão até 31, exigindo um display de dezena e um de unidade para o eixo X, e o mesmo para o eixo Y. Já a quinta saída é o pino de STATUS. Ele é um único bit que atua como o 'veredicto' da rede neural, acendendo um LED se a coordenada visível nos displays pertencer à área do octógono, e apagando se estiver fora.


4 SAÍDA DE DISPLAYS: 2 displays para o eixo X; 2 displays para o eixo Y.

Display 1 (Dezena de X): Mostra a dezena da coordenada X (só vai de 0 a 3).
Display 2 (Unidade de X): Mostra a unidade da coordenada X (vai de 0 a 9).
Display 3 (Dezena de Y): Mostra a dezena da coordenada Y (só vai de 0 a 3).
Display 4 (Unidade de Y): Mostra a unidade da coordenada Y (vai de 0 a 9).

 
SAÍDA PRINCIPAL: O pino Status (1 = dentro da figura, 0 = fora da figura)

Status = 1 (LED Aceso): Significa que as coordenadas X e Y mostradas nos 4 displays estão dentro da área de interseção (o octógono). A rede classificou o ponto como verdadeiro.

Status = 0 (LED Apagado): Significa que as coordenadas X e Y estão fora da área. A rede classificou o ponto como falso.


SIMULAÇÃO: Para provar que o hardware não tem falhas, realizei um teste exaustivo no Waveform. Ajustei os tempos para que X varresse todos os valores rapidamente (10 ns) e Y varresse um pouco mais rápido (320 ns). Isso gerou todas as combinações possíveis de coordenadas de 0 a 31 em 10.24 us. Observando o gráfico de simulação, o sinal de Status só subiu para o nível alto ('1') exatamente nos intervalos de tempo onde os vetores correspondiam à área de interseção das figuras geométricas, validando o classificador com 100% de precisão.

Teste 1 (Tudo Verdadeiro): X = 10000, Y = 10000

O MLP_QUADRADO ativou 1 e o MLP_LOSANGO também ativou 1. Como os dois concordaram, o pino de STATUS foi para 1. O ponto está dentro do octógono.

Teste 2 (Tudo Falso): X = 00010, Y = 00010

As paredes do Quadrado pedem no mínimo 10, e as do Losango pedem X+Y >= 22. Ambas as redes neurais deram 0, então o STATUS continuou 0.

Teste 3 (Apenas Quadrado Verdadeiro): X = 01010, Y = 01010

X = 10 e Y = 10 está dentro dos limites do Quadrado, e a saída do MLP_QUADRADO foi para 1. Porém, a soma dá 20, o que reprova na diagonal H1 do Losango (que pede 22). O MLP_LOSANGO deu 0. A porta AND final bloqueou e o STATUS ficou 0.

Teste 4 (Apenas Losango Verdadeiro): X = 11001, Y = 01111

X = 25 e Y = 15, o ponto atende a todas as diagonais e o MLP_LOSANGO vai para 1. Mas como X passou de 22, a parede direita do MLP_QUADRADO (Neurônio H2) reprova e manda 0. Novamente, a porta AND final entra em ação e mantém o STATUS em 0.



Sistema de Conversão: Binário para BCD

O meu bloco de conversão consolida todo o processo para facilitar a ligação. Ele possui 14 pinos de saída porque já entrega o sinal pronto e decodificado para dois displays de 7 segmentos simultaneamente.

As 7 primeiras saídas: Controlam exclusivamente o display das Dezenas. A lógica interna do BCD calcula se a dezena é 0, 1, 2 ou 3, e aciona os segmentos correspondentes.

As 7 últimas saídas: Controlam o display das Unidades. Elas pegam o resto da conversão e acionam os segmentos para formar os números de 0 a 9.

O exemplo prático:

Se o meu X for 11111 (31 em decimal), o bloco processa isso e já manda os pulsos certos nos 7 fios da esquerda para desenhar um '3', e nos 7 fios da direita para desenhar um '1'.

O meu bloco de display funciona em duas etapas principais. Primeiro, ele recebe os 5 bits da coordenada e converte para BCD, separando a lógica da Dezena (que vai de 0 a 3) e da Unidade (de 0 a 9). Em seguida, esses valores entram em decodificadores combinacionais que geram dois vetores independentes de 7 bits. Cada bit desses vetores controla diretamente os segmentos (a-g) dos displays físicos para desenhar os números corretamente, como demonstrado na minha simulação.

Equações do display de 7 segmento:

a = I3 + I1 + (I2 . I0) + (~I2 . ~I0)

b = ~I2 + (~I1 . ~I0) + (I1 . I0)

c = I2 + ~I1 + I0

d = I3 + (~I2 . ~I0) + (~I2 . I1) + (I1 . ~I0) + (I2 . ~I1 . I0)

e = (~I2 . ~I0) + (I1 . ~I0)

f = I3 + (~I1 . ~I0) + (I2 . ~I1) + (I2 . ~I0)

g = I3 + (I2 . ~I1) + (~I2 . I1) + (I1 . ~I0)


Disposição do Display de 7 segmentos:


a: O traço horizontal do topo.

b: O traço vertical superior direito.

c: O traço vertical inferior direito.

d: O traço horizontal da base

e: O traço vertical inferior esquerdo.

f: O traço vertical superior esquerdo.

g: O traço horizontal do meio
