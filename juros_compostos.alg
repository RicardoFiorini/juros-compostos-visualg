algoritmo "Calculadora de Juros Compostos Avançada"

// --- Função: Cálculo de Juros Compostos ---
// A = P(1 + r/n)^(nt)
// P = Principal (p)
// r = Taxa Anual (r)
// t = Anos (t)
// n = Períodos de Capitalização por ano (n)
funcao CalcularValorFuturo(p: real; taxaAnual: real; anos: real; n: inteiro) : real
var
   taxaDecimal, taxaPorPeriodo, base: real
   numeroTotalDePeriodos: real
inicio
   // 1. Converter taxa % para decimal (ex: 5% -> 0.05)
   taxaDecimal <- taxaAnual / 100

   // 2. Calcular a taxa por período (r/n)
   taxaPorPeriodo <- taxaDecimal / n

   // 3. Calcular o número total de períodos (n*t)
   numeroTotalDePeriodos <- n * anos

   // 4. Calcular a base da potência (1 + r/n)
   base <- 1 + taxaPorPeriodo

   // 5. Retornar a fórmula completa: P * (base ^ totalDePeriodos)
   retorne p * (base ^ numeroTotalDePeriodos)
fimfuncao

// --- Procedimento: Pausa a execução ---
procedimento Pausar()
var
   tecla: caractere
inicio
   escreva("\n(Pressione [ENTER] para continuar...)")
   leia(tecla)
fimprocedimento

// --- Bloco Principal (Início da Execução) ---
var
   principal, taxaAnual, anos, valorFuturo, jurosTotais: real
   periodos, opcaoPeriodo: inteiro
   continuar: caractere
inicio
   continuar <- "S"

   enquanto (continuar = "S") ou (continuar = "s") faca
      limpatela
      escreva("=====================================\n")
      escreva("=   Calculadora de Juros Compostos  =\n")
      escreva("=====================================\n")

      // --- ENTRADA (com Validação) ---

      // 1. Principal
      principal <- 0
      enquanto (principal <= 0) faca
         escreva("Digite o valor principal (R$): ")
         leia(principal)
         se (principal <= 0) entao
            escreva("[ERRO] O valor principal deve ser positivo.\n")
         fimse
      fimenquanto

      // 2. Taxa de Juros Anual
      taxaAnual <- -1
      enquanto (taxaAnual < 0) faca
         escreva("Digite a taxa de juros ANUAL (ex: 5 para 5%): ")
         leia(taxaAnual)
         se (taxaAnual < 0) entao
            escreva("[ERRO] A taxa de juros não pode ser negativa.\n")
         fimse
      fimenquanto

      // 3. Período em Anos
      anos <- 0
      enquanto (anos <= 0) faca
         escreva("Digite o período em ANOS (ex: 2.5 para 2 anos e meio): ")
         leia(anos)
         se (anos <= 0) entao
            escreva("[ERRO] O número de anos deve ser positivo.\n")
         fimse
      fimenquanto
      
      // 4. Frequência de Capitalização
      periodos <- 0
      enquanto (periodos <= 0) faca
         escreva("-------------------------------------\n")
         escreva("Qual a frequência da capitalização?\n")
         escreva("1. Anual (1x por ano)\n")
         escreva("2. Semestral (2x por ano)\n")
         escreva("3. Trimestral (4x por ano)\n")
         escreva("4. Mensal (12x por ano)\n")
         escreva("Digite a opção (1, 2, 3 ou 4): ")
         leia(opcaoPeriodo)

         escolha opcaoPeriodo
            caso 1: periodos <- 1
            caso 2: periodos <- 2
            caso 3: periodos <- 4
            caso 4: periodos <- 12
            padrão:
               escreva("[ERRO] Opção inválida. Tente novamente.\n")
               periodos <- 0 // Força a repetição do loop
         fimescolha
      fimenquanto

      // --- CÁLCULO ---
      valorFuturo <- CalcularValorFuturo(principal, taxaAnual, anos, periodos)
      jurosTotais <- valorFuturo - principal

      // --- SAÍDA ---
      limpatela
      escreva("=====================================\n")
      escreva("=             RESULTADO             =\n")
      escreva("=====================================\n")
      escreva("Investimento Inicial: R$ ", principal:0:2, "\n")
      escreva("Taxa de Juros: ", taxaAnual:0:2, "% ao ano\n")
      escreva("Período: ", anos, " anos\n")
      escreva("Capitalização: ", periodos, "x por ano\n")
      escreva("-------------------------------------\n")
      escreva("Valor Futuro: R$ ", valorFuturo:0:2, "\n")
      escreva("Total em Juros: R$ ", jurosTotais:0:2, "\n")
      escreva("=====================================\n")

      // --- CONTROLE DO LOOP ---
      escreva("\nDeseja fazer outro cálculo? (S/N): ")
      leia(continuar)
      
   fimenquanto

   limpatela
   escreva("Obrigado por usar a calculadora!\n")
fimalgoritmo
