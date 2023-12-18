*** Settings ***
Resource         ../resources/settings.robot
Resource         ../PageObjects/cadastroPage.robot
Test Setup       Start Automation
Task Teardown    Stop Automation


*** Test Cases ***

Cenário de Cadastro de 1 card pra cada time
    Dado que o usuario esta no site do Organo
	Quando preencher o formulario com as informações
    Então criar e identificar 1 card em cada time

Cenário de Cadastro de 3 Card's 
    Dado que o usuario esta no site do Organo
	Quando preencher o formulario com    ${fakerNome}    ${FakerCargo}    1
    Então criar e identificar os 3 card's no time esperado

Cenário de Cadastro do Card com sucesso time Programação
    Dado que o usuario esta no site do Organo
	Quando preencher o formulario com    ${fakerNome}    ${FakerCargo}    1
    Então será visualizado o card no time esperado

Cenário de Cadastro do Card com sucesso time Front-End
    Dado que o usuario esta no site do Organo
	Quando preencher o formulario com    ${fakerNome}    ${FakerCargo}    2
    Então será visualizado o card no time esperado

Cenário de Cadastro do Card com sucesso time Data Science
    Dado que o usuario esta no site do Organo
	Quando preencher o formulario com    ${fakerNome}    ${FakerCargo}    3
    Então será visualizado o card no time esperado

Cenário de Cadastro do Card com sucesso time Devops
    Dado que o usuario esta no site do Organo
	Quando preencher o formulario com    ${fakerNome}    ${FakerCargo}    4
    Então será visualizado o card no time esperado

Cenário de Cadastro do Card com sucesso time UX e Design
    Dado que o usuario esta no site do Organo
	Quando preencher o formulario com    ${fakerNome}    ${FakerCargo}    5
    Então será visualizado o card no time esperado

Cenário de Cadastro do Card com sucesso time Mobile
    Dado que o usuario esta no site do Organo
	Quando preencher o formulario com    ${fakerNome}    ${FakerCargo}    6
    Então será visualizado o card no time esperado

Cenário de Cadastro do Card com sucesso time Inovação e Gestão
    Dado que o usuario esta no site do Organo
	Quando preencher o formulario com   ${fakerNome}    ${FakerCargo}    7
    Então será visualizado o card no time esperado

Cenário de Cadastro dos Card's com sucesso
    Dado que o usuario esta no site do Organo
	Quando preencher o formulario com   ${fakerNome}    ${FakerCargo}    1
    Então será visualizado o card no time esperado


Cenário Cadastro campo Nome em Branco
	Dado que o usuario esta no site do Organo
	Quando preencher o formulario com    Null    ${FakerCargo}    1
	Então o sistema exibirá a mensagem de erro    nome   O campo nome deve ser preenchido   

Cenário Cadastro campo Cargo em Branco
	Dado que o usuario esta no site do Organo
	Quando preencher o formulario com    ${fakerNome}    Null    2
	Então o sistema exibirá a mensagem de erro    cargo   O campo cargo deve ser preenchido  

Cenário Cadastro campo Time em Branco
	Dado que o usuario esta no site do Organo
	Quando preencher o formulario com   ${fakerNome}    ${FakerCargo}    Null
	Então o sistema exibirá a mensagem de erro    time    Selecione um time para essa pessoa 