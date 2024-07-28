*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Variables    ../Locators/AdminPage.py
*** Variables ***    

*** Keywords ***    

AccessAddUserPage
    Wait Until Element Is Visible    ${Addbutton}
    Click Element    ${Addbutton}
    Wait Until Page Contains    Add User
