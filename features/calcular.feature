#language: pt
#coding: utf-8

Funcionalidade: Calcular

    Contexto: Tela inicial da calculadora
    Dado que estou na tela inicial
    
    @soma
    Cenário: Calcular uma soma entre dois números

    Quando eu digitar o valor "15"
    E clicar em somar
    E digitar o valor "30"
    Então o resultado será "45"

    @subtrair
    Cenário: Calcular uma subtração entre dois números

    Quando eu digitar o valor "67"
    E clicar em subtrair
    E digitar o valor "17"
    Então o resultado será "50"