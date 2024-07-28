*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Variables   ../Locators/Dashboard.py
Variables   ../Locators/AdminPage.py
Variables     ../Locators/CreateNewUser.py 

*** Variables ***

*** Keywords ***
Adduser
    Wait Until Element Is Visible    ${AdminIcone}
    Click Element    ${AdminIcone}
    Wait Until Element Is Visible    ${Addbutton}
    Click Element    ${Addbutton}
    Wait Until Element Is Visible    ${userrole}
    Click Element    ${userrole}
    Wait Until Element Is Visible    ${Administra}
    Click Element    ${Administra}
    Wait Until Element Is Visible    ${selectStatus}
    Click Element    ${selectStatus}
    Wait Until Element Is Visible    ${Disabled}
    Click Element    ${Disabled}
    

    
