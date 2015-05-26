Given(/^que o atleta de cpf "([^"]*)" esta cadastrado no sistema$/) do |arg1|
  pending
  	#atletaExist = Atletas.find_by_cpf(arg1)
  	#assert_nil atletaExist
end

When(/^eu classifico o atleta de cpf "(\d+)" como "([^"]*)"$/) do |arg1, arg2|
  pending
  	#classification = arg2
end

Then(/^o sistema salva a classificacao do atleta de cpf "([^"]*)" como "([^"]*)"
$/) do |arg1, arg2|
  pending
  	#Atletas.set_classification(arg1, arg2)
end

Given(/^que eu quero remover o atleta de cpf "(\d+)" que nao existe no sistema$/) do |arg1|
  pending
end

When(/^eu buscar o cpf "(\d+)" no sistema$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^o sistema emite uma mensagem "CPF nao existente\."$/) do
  pending # Write code here that turns the phrase above into concrete actions
end