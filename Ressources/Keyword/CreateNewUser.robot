*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary

Variables    ../Locators/CreateNewUser.py
Variables    ../JDD/CreateNewUser.py

*** Variables ***

*** Keywords ***

Unsuccessful creating new user with empty fields
    Wait Until Element Is Visible    ${SaveButton}
    Click Element    ${SaveButton}
    Page Should Contain    Confirm Password

Unsuccessful creating new user with username aleady exists
    Wait Until Element Is Visible    ${createUsername}
    Input Text    ${createUsername}    ${ExistUsername}
    Wait Until Element Is Visible    ${SaveButton}
    Click Element    ${SaveButton}
    Wait Until Page Contains    Already exists

Unsuccessful creating new user with Employee name doesn't exist

    Wait Until Element Is Visible    ${EmployeeName}
    Input Text    ${EmployeeName}    ${InvalidEmploeeName}
    Wait Until Element Is Visible    ${SaveButton}
    Click Element    ${SaveButton}
    Wait Until Page Contains    Invalid

Successful creating new user 

    Wait Until Element Is Visible    ${EmployeeName}
    Input Text    ${EmployeeName}    ${validEmplyeeName}
    Input Text    ${createUsername}    ${NewUsername}
    Input Password    ${Creatpassword}   ${Jddpassword}
    Input Password    ${Confirmpassword}    ${Jddpassword}
    Click Element   ${userrole}    
    Select From List By Index    ${userrole}    0
    Sleep    5s
    Wait Until Element Is Visible    ${SaveButton}
    Click Element    ${SaveButton}
    