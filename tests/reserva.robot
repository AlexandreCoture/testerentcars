***Settings***
Documentation       Criar reserva
...                 Sendo um cliente logado
...                 Quero escolher data e destino da minha reserva

Resource        ../resources/actions.robot

Suite Setup             Login Session       coture@rentcars.com     rent123
Suite Teardown          Close Session 
Test Teardown           After Test
##Library                 DateTime
##Library                 Selenium2Library

***Test Cases***
Criar reserva
    Dado que quero fazer uma nova reserva
    Quando informo "Curitiba" e data de retirada e devolução e confirmo
    Devo ser direcionado para a listar


***Keywords***
Escolha de data e retirada
    [Arguments]     ${input_local}    

    Dado que quero fazer uma nova reserva
    Quando informo "${input_local}" e data de retirada e devolução e confirmo
    Devo ser direcionado para a listar  
