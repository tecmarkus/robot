*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}    http://www.amazon.com.br
${LOGOAMAZON}    //a[@href='/ref=nav_logo'][contains(.,'.com.br')]

*** Keywords ***

Abrir o navegador 
    Open Browser    browser=chrome
Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator={LOGOAMAZON}
