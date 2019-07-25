Dado("solicito get informando o endpoint do Correios com o cep {string}") do |cep|
   
  @response = CepAPI.new.consultar_cep(cep) #ok
  @cep = cep #ok
  puts @response.to_s #ok
end
  
Então("recebo o resultado de código {int}") do |codigo|
  expect(@response.code).to eq(codigo)#ok
end
  
Então("valido que os dados correntos foram retornados") do
  expect(@response).not_to be_nil#ok
  expect(@response['cep']).to eq(@cep)#ok
  expect(@response['bairro']). to eq('Vila Medeiros')#ok
  expect(@response['cidade']). to eq('São Paulo')#ok
  expect(@response['logradouro']). to eq('Rua Francisco de Medeiros Jordão')#ok
end






