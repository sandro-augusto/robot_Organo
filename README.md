# AUTOMAÇÃO ORGANO WEB - ROBOT FRAMEWORK
## PRÉ-REQUISITOS
Requisitos de software e hardware necessários para executar este projeto de automação

* Python 3.11 ou superior
* Robot Framework 6.1 ou superior
* Vs Code IDE
* Extensions Vs Code
    * Robot Framework Language
    * Python
* Link para baixar o projeto:
    https://github.com/alura-cursos/robot-framework-organo/archive/refs/heads/main.zip

* Passos para inicar o projeto Organo localmente na sua maquina:

    1- Abrir o CMD do seu computador:

    2- Entrar na pasta do projeto:
    
    3- Acionar os comandos abaixo:

* Para instalar as dependências do projeto:

```sh 
 npm install
```

* Para iniciar o projeto:

```sh default
 npm start
```


## ESTRUTURA DO PROJETO

| Diretório                         | Finalidade                                                                                                 | 
|--------------------------------|------------------------------------------------------------------------------------------------------------|
| Features           | Local onde são descritas as features "Test Cases" em formato BDD                                           |
| PageObjects               | Local onde devem ser criados os Keywords para cada step                   |
| Resource             | Local onde estão criados os recursos de configuração do projeto                                                           |
| Results             | Local onde são criadas as evidências e relatórios do projeto                                        |


## COMANDO PARA EXECUTAR OS TESTES

Com o prompt de comando acesse a pasta do projeto e execute o comando abaixo para rodar os testes automatizados.

```sh default
robot -d Results ./features/
```

## COMANDO PARA EXECUÇÃO DE TESTES COM TAGS

Com o prompt de comando acesse a pasta do projeto e execute o comando abaixo para rodar um cenário com a tag específica

Ex.:
```sh default
robot -d Results -t "Cenário de Cadastro de 1 card pra cada time" features/LoginSaucedemo.robot
```

## EVIDÊNCIAS
Os arquivos com as evidências ficam localizados na pasta Results do projeto, esta pasta só é criada depois da primeira execução. Lá se encontram os Logs. o report html com os status da execução e os prins evidênciando a execução.
