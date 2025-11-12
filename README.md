# 💰 Calculadora de Juros Compostos (Portugol)

Este é um algoritmo de console interativo, escrito em Portugol, que calcula o valor futuro de um investimento com base no princípio dos juros compostos.

O projeto foi desenvolvido com foco em robustez, incluindo validação de dados, modularização (usando funções) e uma experiência de usuário aprimorada, permitindo cálculos múltiplos sem reiniciar o programa.

## ✨ Funcionalidades

* **Cálculo de Valor Futuro:** Calcula o montante final de um investimento.
* **Frequência de Capitalização:** Permite ao usuário escolher a frequência com que os juros são compostos:
    * Anual (1 vez por ano)
    * Semestral (2 vezes por ano)
    * Trimestral (4 vezes por ano)
    * Mensal (12 vezes por ano)
* **Relatório Detalhado:** Ao final, exibe um resumo claro, incluindo o valor inicial, a taxa, o período e, o mais importante, o **Valor Futuro** total e o **Total ganho em Juros**.
* **Loop de Execução:** O programa roda em loop, permitindo ao usuário realizar quantos cálculos desejar.
* **Validação de Entrada:** O sistema impede que o usuário insira valores inválidos (como um principal negativo ou um período de zero anos), garantindo a precisão do cálculo.

## 📈 A Fórmula Utilizada

Este algoritmo utiliza a fórmula completa e padrão dos juros compostos, que é:

$$
A = P \left( 1 + \frac{r}{n} \right)^{nt}
$$

Onde:
* **A** = `valorFuturo` (o montante final)
* **P** = `principal` (o investimento inicial)
* **r** = `taxaAnual` (a taxa de juros anual, em formato decimal)
* **n** = `periodos` (o número de vezes que os juros são capitalizados por ano)
* **t** = `anos` (o número de anos que o dinheiro fica investido)

O código modulariza essa lógica dentro da função `CalcularValorFuturo()`.

## 🚀 Como Executar

Para executar este algoritmo, você precisará de um interpretador de Portugol.

1.  **VisualG (Recomendado):**
    * Baixe e instale o [VisualG](http://visualg.com.br/cli/).
    * Copie o código-fonte (`.alg`) do arquivo.
    * Abra o VisualG e cole o código.
    * Pressione **F9** (ou clique em "Rodar") para executar o programa.
