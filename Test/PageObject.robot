*** Settings ***
Library    OperatingSystem
Resource    ../Ressources/Keyword/common.robot
Resource    ../Ressources/Keyword/authentification.robot
Library    SeleniumLibrary
*** Variables ***


*** Test Cases ***
TC1: 
      [Documentation]    open siteweb page 
      [tags]     critical
      OpenPage
      Authentification avec username et password valid
      Close Browser  
TC2: 
    [Documentation]    credentials invalid
    [Tags]    cr1
    OpenPage
    Authentification avec username et password invalid
    Close Browser
TC3:
    [Documentation]     username valid password invalid
    [Tags]    cr2
    OpenPage
    Authenfication avec username valid and password invalid
    Close Browser

TC4:
    [Documentation]    username & password empty
    [Tags]    cr3
    OpenPage
    Autheification with empty credentials
    Close Browser
