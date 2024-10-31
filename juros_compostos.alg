algoritmo "Calculadora de Juros Compostos"
variáveis
    principal, taxa, anos, valorFuturo : real
início
    escreva("=== Calculadora de Juros Compostos ===\n")

    // Solicita o valor principal
    escreva("Digite o valor principal (investimento inicial): R$ ")
    leia(principal)

    // Solicita a taxa de juros anual
    escreva("Digite a taxa de juros anual (em porcentagem): ")
    leia(taxa)

    // Solicita o número de anos
    escreva("Digite o número de anos: ")
    leia(anos)

    // Converte a taxa de porcentagem para decimal
    taxa ← taxa / 100

    // Calcula o valor futuro usando a fórmula de juros compostos
    valorFuturo ← principal * (1 + taxa) ^ anos

    // Exibe o resultado
    escreva("Valor futuro do investimento após ", anos, " anos: R$ ", valorFuturo:0:2)
fimenquanto
