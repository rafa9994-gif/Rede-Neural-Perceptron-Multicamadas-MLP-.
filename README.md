# Rede Neural Perceptron Multicamadas (MLP) em Hardware

## 🎯 Objetivo do Projeto
O objetivo deste projeto foi implementar uma Rede Neural do tipo Perceptron Multicamadas (MLP) voltada para a execução em hardware reconfigurável (FPGA). A rede foi treinada e estruturada para realizar o reconhecimento geométrico, identificando se uma coordenada bidimensional (x_1, x_2) pertence à área de um círculo aproximado (um octógono) em uma grade discreta de 32x32 pixels.

O diferencial deste projeto é que a rede neural não foi desenvolvida através de software ou linguagens de alto nível, mas sim construída puramente utilizando diagramas de blocos no nível de hardware com portas lógicas básicas (AND, OR, XOR, etc).

## 🧠 Arquitetura da Rede Neural (Feedforward)
A rede neural foi estruturada seguindo o conceito de grafos acíclicos direcionados, dividida em camadas (layers). O circuito principal é composto por três blocos essenciais, modelados a partir de um bloco básico de neurônio (função step):
1. **Bloco Neurônio Elementar:** Recebe 4 entradas, 4 pesos e um termo de bias (ajuste), calculando a soma ponderada das entradas e aplicando a função degrau unitário (step).
2. **Camada Oculta - `mlp_losango`:** Submodelo com 4 neurônios na primeira camada e 1 neurônio de saída, treinado para detectar se o ponto está dentro dos limites de um losango.
3. **Camada Oculta - `mlp_quadrado`:** Submodelo idêntico em estrutura (4 neurônios iniciais + 1 saída), mas com pesos e bias ajustados para detectar a pertinência do ponto dentro de um quadrado.
4. **Camada de Saída (`mlp`):** Combina os resultados dos modelos do losango e do quadrado, aplicando os pesos finais para aproximar a forma geométrica resultante a um octógono circular.

## ⚙️ Especificações de Hardware e Entradas
* **Entradas X e Y:** O circuito recebe dois valores inteiros de 5 bits cada (valores de 0 a 31), representando as coordenadas na grade.
* **Decodificadores Integrados:** Foram acoplados dois decodificadores que recebem os vetores de 5 bits das entradas e retornam saídas de 7 bits para alimentar dois displays numéricos.
* **Saída Status:** Um único sinal de 1 bit (LED) indicando o resultado do processamento da rede neural (1 = dentro do círculo, 0 = fora).

## 🛠️ Tecnologias e Conceitos Aplicados
* **Machine Learning:** Perceptron Multicamadas, Redes Feedforward, Pesos, Bias e Função Degrau (Step Function).
* **Sistemas Digitais:** Lógica combinacional, mapeamento lógico e diagramas de blocos sem uso de VHDL.
* **Python e Numpy:** Utilizados para modelar a lógica e simular visualmente a área de classificação da rede neural (Matplotlib) antes da implementação em hardware.
