*** Settings ***
Resource         ../resources/settings.robot
Resource         ../resources/action.robot



*** Variables ***
${urlOrgano}           http://localhost:3000/
${fieldNome}           id:form-nome
${fieldCargo}          id:form-cargo
${fieldImage}          id:form-imagem
${fieldTime}           css:select > option
@{listJob}
...                    css:select > option:nth-child(2)
...                    css:select > option:nth-child(3)
...                    css:select > option:nth-child(4)
...                    css:select > option:nth-child(5)
...                    css:select > option:nth-child(6)
...                    css:select > option:nth-child(7)
...                    css:select > option:nth-child(8)
${btnCriarCard}        id:form-botao
${validaColaborador}   class=colaborador
${nomeErro}            id:form-nome-erro
${cargoErro}           id:form-cargo-erro
${timeErro}            id:form-times-erro
${fakerNome}           
${FakerCargo}          
${FakerImgage}         



*** Keywords ***
Dado que o usuario esta no site do Organo
	${urlAtual}    Get Location
    Should Be Equal As Strings    ${urlAtual}    ${urlOrgano}
	Capture Page Screenshot

Quando preencher o formulario com
	[Arguments]    ${nome}    ${cargo}    ${time}
	${fakerNome}           FakerLibrary.First Name
    ${FakerCargo}          FakerLibrary.Job
	${FakerImgage}         FakerLibrary.Image Url

	Scroll Element Into View    ${btnCriarCard}
	Run Keyword If    '${nome}' != 'Null'    set    ${fieldNome}     ${fakerNome}
	Run Keyword If    '${cargo}' != 'Null'   set    ${fieldCargo}    ${FakerCargo}
    set    ${fieldImage}    ${FakerImgage}
	Run Keyword If    '${time}' != 'Null'    clickIndex    ${fieldTime}    ${time}
	Capture Page Screenshot
	click    ${btnCriarCard}

Quando preencher o formulario com as informações
	${fakerNome}           FakerLibrary.First Name
    ${FakerCargo}          FakerLibrary.Job
	${FakerImgage}         FakerLibrary.Image Url    width=100    height=100

	Scroll Element Into View    ${btnCriarCard}
	set    ${fieldNome}     ${fakerNome}
	set    ${fieldCargo}    ${FakerCargo}
    set    ${fieldImage}    ${FakerImgage}
	click    ${fieldTime}
	Click Element    ${listJob}[1]
	Capture Page Screenshot

Então será visualizado o card no time esperado
	Scroll Element Into View    ${validaColaborador}
	Element Should Be Visible    ${validaColaborador}

Então o sistema exibirá a mensagem de erro
	[Arguments]    ${campo}    ${message}
	${text}=    Run Keyword If    '${campo}' == 'nome'     Get Text    ${nomeErro}
    ...    ELSE IF    '${campo}' == 'cargo'                Get Text    ${cargoErro}
	...    ELSE IF    '${campo}' == 'time'                 Get Text    ${timeErro}
	Should Be Equal As Strings    ${text}    ${message}

Então criar e identificar os 3 card's no time esperado
    FOR    ${i}    IN RANGE    1    3
		Quando preencher o formulario com    ${fakerNome}    ${FakerCargo}    1
	END	

Então criar e identificar 1 card em cada time
	FOR    ${index}    ${time}    IN ENUMERATE    @{listJob}
		Quando preencher o formulario com as informações
		Click    ${time}
		CLick    ${btnCriarCard}
	END
