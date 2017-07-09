Dado(/^que estou na tela inicial$/) do
  @tela = Home.new

  @tela.verificar
end

Quando(/^eu digitar o valor "([^"]*)"$/) do |arg1|
  @tela.recebe_interacao(arg1)
end

Quando(/^clicar em somar$/) do
  @tela.recebe_formula_ou_operacao('mais')
end

Quando(/^clicar em subtrair$/) do
  @tela.recebe_formula_ou_operacao('menos')
end

Quando(/^digitar o valor "([^"]*)"$/) do |arg1|
  @tela.recebe_interacao(arg1)
end

Então(/^o resultado será "([^"]*)"$/) do |arg1|
  @tela.validar_resultado(arg1)
end