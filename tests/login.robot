***Settings*** 
Documentation       Login
...                 Sendo que sou um cliente do rentcars.com
...                 Quero me logar no sistema
...                 Para poder fazer minha reserva

Resource        ../resources/actions.robot

Suite Setup             Open Session 
Suite Teardown          Close Session 
Test Teardown           After Test

***Test Cases***
Cliente autenticado
        [Tags]          success_login
        Dado que acesso a home do sistema
        Quando submeto minhas credenciais para login "coture@rentcars.com" e "rent123"
        Então devo ser autenticado

Senha invalida
        [Template]              Tentativa de Login
        coture@rentcars.com     123433          Os dados de acesso não conferem, tente novamente.

Email não cadastrado
        [Template]              Tentativa de Login
        404@rentcars.com        rent123         Os dados de acesso não conferem, tente novamente.

Email incorreto
        [Template]              Tentativa de Login
        joao&rentcars.com       rent123         Os dados de acesso não conferem, tente novamente.

Email não informado
        [Template]              Tentativa de Login
        ${EMPTY}                rent123         Os dados de acesso não conferem, tente novamente.

***Keywords***
Tentativa de login
        [Arguments]     ${input_email}          ${input_pass}           ${output_text}

        Dado que acesso a home do sistema
        Quando submeto minhas credenciais para login "${input_email}" e "${input_pass}"
        Então devo ver a mensagem de alerta "${output_text}"