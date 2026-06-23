Algoritmo "Cálculadora Algoritma-RA1237663"
var
   opcao:inteiro
   resposta,n,base,expoente,a,b,c,x,delta,x1,x2:real
   continuar:inteiro
inicio
   opcao<-1
   enquanto opcao <> 0 faca
      escreval("========================================")
      escreval("|         SISTEMA DE CÁLCULO           |")
      escreval("|   Muito Bem-vindo Professor Paulo.L! |")
      Escreval("========================================")
      Escreval("|   Operação       |   Fórmulas        |")
      Escreval("---------------------------------------|")
      escreval("Por gentileza,Selecione uma opção abaixo:")
      escreval(" 1-Raiz Quadrada:  |  RAIZQ=n         |")
      escreval(" 2- Potência:      | (base)^2         |")
      escreval(" 3-Equação 1º grau:| Ax+b=0           |")
      escreval(" 4-Equação 2º grau:| Ax^2+Bx+C=0      |")
      escreval(" 0- Finalizar")
      escreval("")
      escreval("Digite a opção desejada:  ")
      leia(opcao)
      limpatela
      escolha opcao
      caso 1
         continuar <- 1
         enquanto continuar=1 faca
            Escreval("=================================")
            Escreval("   Calculadora Raiz Quadrada     ")
            Escreval("")
            Escreval("=================================")
            Escreval("")
            Escreval("Digite um número para calcular raizQ: ")
            leia(n)
            ESCREVAL("")
            se n >= 0 entao
               resposta <- raizq(n)
               escreval(" RaizQ ",n ,  "="  , resposta:1:2)
            senao
               escreval("Não existe a Raiz Quadrada real de um número para o", n ,"negativo.")
            fimse

            escreval("Deseja Continuar? [1]Continuar [0]Finalizar: ")
            leia(continuar)
         fimenquanto
      caso 2
         continuar<- 1
         enquanto continuar =1 faca
            Escreval("===============================")
            Escreval("          Potência             ")
            Escreval("")
            Escreval("===============================")
            Escreval("Digite um valor para base da potência: ")
            leia(base)
            Escreval("")
            Escreval("Digite o expoente:  ")
            leia(expoente)
            resposta:=base ^ expoente
            Escreval(base , "elevado a ", expoente , "=", resposta)
            escreval("Deseja continuar? [1]Sim [0]Não")
            leia(continuar)
         fimenquanto
      caso 3
         continuar <- 1
         enquanto continuar = 1  faca
            Escreval("==========*===========")
            Escreval("  Equação do 1ªgrau.  ")
            Escreval("----------------------")
            Escreval("Fórmula:", "Ax+B=0 ")
            Escreval("")
            Escreval("Digite o valor de A:  ")
            leia(a)
            Escreval("Digite o valor de B:  ")
            leia(b)
            Escreval("")
            se a<>0 entao
               x:=-b/a
               Escreval("Solução: x=", x:1:2)
            senao
               Escreval("Não é equação do 1ª grau,pois A=0.")
            fimse
            escreval("Deseja continuar? [1]Sim [0]Não")
            leia(continuar)
         fimenquanto
      caso 4
         continuar<-1
         enquanto continuar = 1 faca
            Escreval("==========*===========")
            Escreval("  Equação do 2º grau. ")
            Escreval("----------------------")
            Escreval("Fórmula: Ax^2+Bx+C=0")
            Escreval("Digite o valor de A:   ")
            leia(a)
            Escreval("O valor de B:  ")
            leia(b)
            Escreval("Agora, o valor de C: ")
            leia(c)
            SE a <> 0 entao
               delta := b^2-4*a*c
               se delta < 0 entao
                  escreval("O DELTA é negativo, ou seja, não há raízes reais.")
               senao
                  x1 := (-b - raizq(delta))/(2*a)
                  x2 := (-b + raizq(delta))/(2*a)
                  escreval("Raízes são","X1", "=" ,  x1:1:2   ,  "|",     "X2" ,  " = " ,  x2:1:2)
               fimse
            senao
               escreval("O resultado não pode ser  A= 0 .")
            fimse
            escreval("Continuar? [1]Sim [0]Não")
            leia(continuar)
         fimenquanto
      caso 0
         escreval("Programa finalizado... Obrigado pela sua presença!")
      outrocaso
         escreval("Opção/Caractere inválido.")
      fimescolha
   fimenquanto
fimalgoritmo
