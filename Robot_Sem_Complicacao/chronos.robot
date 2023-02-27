*** Settings ***
Documentation       Robot Framework_Sem_complicacao

Library             SeleniumLibrary    timeout=2000
Library             String


*** Variables ***
${url}          https://www.demoblaze.com/
${navegador}    chrome


*** Test Cases ***
chronos teste
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Click Link    Laptops
    Wait Until Element Is Visible    link=MacBook Pro
    Click Link    MacBook Pro
    Wait Until Element Is Visible    xpath=//div[2]/div//a
    Click Element    xpath=//div[2]//div/a
    Alert Should Be Present
