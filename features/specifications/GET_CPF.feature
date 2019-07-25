#language: pt 
#encoding: utf-8

@get @cep
Funcionalidade: Buscar CEP
    Como cliente Correios
    Eu desejo realizar consulta a CEP válidos e invalidos em sua base

@positivo
Cenário: Consulta com sucesso
    Dado solicito get informando o endpoint do Correios com o cep "02214030"
    Então recebo o resultado de código 200
    E valido que os dados correntos foram retornados

@negativo
Cenário: Consulta por cep inexistente
   Dado solicito get informando o endpoint do Correios com o cep "00000"
   Então recebo o resultado de código 404