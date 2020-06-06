***Settings***
Documentation       Aqui teremos todas as palavras de ação dos testes automatizados

Library     SeleniumLibrary


***Keywords***
##Helpers

Open Chrome
        Open Browser        https://site.stage.rentcars.com/pt-br/     chrome    options=add_experimental_option('excludeSwitches', ['enable-logging'])

Open Chrome Headless
        Open Browser        https://site.stage.rentcars.com/pt-br/     headlesschrome

##Hooks

Open Session 

        Run Keyword If          "${browser}" == "chrome"
        ...     Open Chrome

        Run Keyword If          "${browser}" == "headless"
        ...     Open Chrome Headless
        
         Set Window Size     1440    900
        Set Selenium Implicit Wait              6
Login Session
        [Arguments]            ${email}         ${senha}
        Open Session
       ##Go To   https://www.rentcars.com/pt-br/
        Click Element       xpath://*[@id="dropdown-offline"]
        Input Text          //input[@name='Email']      ${email}
        Input Text          //input[@name='Senha']      ${senha}
        Click Button       //input[@value='Entrar']



Close Session 
        Close Browser

After Test
        Capture Page Screenshot

Confirma Destino
        [Arguments]             ${input_local}
        Click Element                    //*[@id="SuggestPickup"]
    Input Text                 //*[@id="SuggestPickup"]      ${input_local}
    Click Element               //*[@id="ui-id-3"]
    Click Element               //*[@id="DataRetirada"]         

   Click Element            //*[@id="formPesquisa"]/div[5]/div[3]/div/div[3]/div[1]/table/thead/tr[1]/th[3]
   Click Element            //*[@id="formPesquisa"]/div[5]/div[3]/div/div[3]/div[1]/table/thead/tr[1]/th[3]
   Click Element            //*[@id="formPesquisa"]/div[5]/div[3]/div/div[3]/div[1]/table/thead/tr[1]/th[3]
   Click Element            //*[@id="formPesquisa"]/div[5]/div[3]/div/div[3]/div[1]/table/thead/tr[1]/th[3]
   Click Element            //*[@id="formPesquisa"]/div[5]/div[3]/div/div[3]/div[1]/table/thead/tr[1]/th[3]
   Click Element            //*[@id="formPesquisa"]/div[5]/div[3]/div/div[3]/div[1]/table/thead/tr[1]/th[3]
   sleep                    3
   Click Element            //div[@id='boxPesquisa']//table[@class='table-condensed']//tbody//tr[2]//td[1]//span[1]
   Click Element            //div[@id='boxPesquisa']//table[@class='table-condensed']//tbody//tr[2]//td[2]//span[1]
   Click Element            //*[@id="submitPesquisa"]
   Sleep                     20
        


##Steps
Dado que acesso a home do sistema
        Go To   https://site.stage.rentcars.com


Quando submeto minhas credenciais para login "${email}" e "${senha}"
        Click Element       xpath://*[@id="dropdown-offline"]
        Input Text          //input[@name='Email']      ${email}
        Input Text          //input[@name='Senha']      ${senha}
        Sleep                   2
        Click Element       //input[@value='Entrar']

Então devo ser autenticado
        Wait Until Page Contains        Alexandre!
        Sleep   2
        Click Element                       xpath://*[@id="dropdown-logged"]
        Sleep  2
        Click Element       class:logout



Então devo ver a mensagem de alerta "${expect_alert}"
        Wait Until Page Contains        ${expect_alert}

                #data e localidades
Dado que quero fazer uma nova reserva
    Wait Until Element Is Visible    //*[@id="SuggestPickup"]

Quando informo ${input_local} e data de retirada e devolução e confirmo
    Click Element                    //*[@id="SuggestPickup"]
    Input Text                 //*[@id="SuggestPickup"]      Curitiba
    Click Element               //*[@id="ui-id-3"]
    Click Element               //*[@id="DataRetirada"]         

   Click Element            //*[@id="formPesquisa"]/div[5]/div[3]/div/div[3]/div[1]/table/thead/tr[1]/th[3]
   Click Element            //*[@id="formPesquisa"]/div[5]/div[3]/div/div[3]/div[1]/table/thead/tr[1]/th[3]
   Click Element            //*[@id="formPesquisa"]/div[5]/div[3]/div/div[3]/div[1]/table/thead/tr[1]/th[3]
   Click Element            //*[@id="formPesquisa"]/div[5]/div[3]/div/div[3]/div[1]/table/thead/tr[1]/th[3]
   Click Element            //*[@id="formPesquisa"]/div[5]/div[3]/div/div[3]/div[1]/table/thead/tr[1]/th[3]
   sleep                    3
   Click Element            //div[@id='boxPesquisa']//table[@class='table-condensed']//tbody//tr[2]//td[1]//span[1]
   Click Element            //div[@id='boxPesquisa']//table[@class='table-condensed']//tbody//tr[4]//td[2]//span[1]
   Click Element            //*[@id="submitPesquisa"]
  
        
Devo ser direcionado para a listar
 
    Wait Until Page Contains    Promoções

                        ##LISTAR


   
