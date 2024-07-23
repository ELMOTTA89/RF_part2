*** Settings ***
Library     OperatingSystem
Library    SeleniumLibrary
Variables    ../Locators/authentification.py
Variables    ../JDD/login.py

*** Keywords ***

Authentification avec username et password valid
    Wait Until Element Is Visible    ${user}
    Input Text    ${user}    ${administrateur}
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}    ${passwordAdmin}
    Wait Until Element Is Visible    ${seconnecter}
    Click Button      ${seconnecter}
    Title Should Be    OrangeHRM

Authentification avec username et password invalid
    Wait Until Element Is Visible    ${user}
    Input Text    ${user}    ${userinvalid}
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}    ${passwordinvalid}
    Wait Until Element Is Visible    ${seconnecter}
    Click Element      ${seconnecter}
    Wait Until Page Contains    Invalid credentials

Authenfication avec username valid and password invalid
    Wait Until Element Is Visible    ${user}
    Input Text    ${user}    ${administrateur}
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}    ${passwordinvalid}
    Wait Until Element Is Visible    ${seconnecter}
    Click Element    ${seconnecter}
    Wait Until Page Contains    Invalid credentials

Autheification with empty credentials
    Wait Until Element Is Visible    ${seconnecter}
    Click Element    ${seconnecter}
    Page Should Contain Element    ${user}


