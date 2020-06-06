***Settings***
Documentation       Criar reserva
...                 Sendo que escolhi a data e localidade
...                 Quero escolher o carro que desejo reservar



Resource        ../resources/actions.robot 
Suite Setup             Login Session       coture@rentcars.com     rent123
Test Setup             Confirma Destino       Curitiba
Test Teardown           After Test


***Test Cases***
Selecionar carro para alugar
    Dado que desejo uma reserva PD
    Quando clicar na tarifa selecionada
   #### Devo ser redirecionado para a configurar

***Keywords***

Dado que desejo uma reserva PD
    #####Click Element    //div[@id="payment_form"]/div[1]/div[1]/div[1]/ul[1]/li[2]
    Select Checkbox         //*[@id="payment-PD"]

Quando clicar na tarifa selecionada

   Wait Until Element Is Enabled    class:card-result__header-title_MyhF5DgC
   Click Element                class:card-result__header-title_MyhF5DgC
   Select Window                title=Reserva de Veículos | Rentcars.com
   Click Element                //a[contains(text(),'Dados do locatário')]
   Select Checkbox              //*[@id="Aceito"]
   Click Element                 //*[@id="form-processoreserva-dados-locatario"]/div[3]/div[1]           