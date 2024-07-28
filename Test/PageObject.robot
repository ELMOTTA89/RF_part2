*** Settings ***
Library    OperatingSystem
Resource    ../Ressources/Keyword/common.robot
Resource    ../Ressources/Keyword/authentification.robot
Resource    ../Ressources/Keyword/AddUserPage.robot
Resource    ../Ressources/Keyword/CreateNewUser.robot
Resource    ../Ressources/Keyword/AddUser.robot
Library    SeleniumLibrary
*** Variables ***


*** Test Cases ***
TC1: 
      [Documentation]    credentials valid
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

TC5:add new user
    [Documentation]    successuful access to Admin page
    [Tags]    cr5
    OpenPage
    Authentification avec username et password valid
    Adduser
    Close Browser

TC6: Addbutton
    [Documentation]    successuful access to add user page
    [Tags]    cr6
        OpenPage
    Authentification avec username et password valid
    Adduser
    AccessAddUserPage
    Close Browser

TC7: Unsuccessfull create User
    [Documentation]    Unsuccessfull create User with empty fields
    [Tags]    cr7
    OpenPage
    Authentification avec username et password valid
    Adduser
    AccessAddUserPage
    Unsuccessful creating new user with empty fields
    Close Browser

TC8: Unsuccessful creating new user with username aleady exists
    [Documentation]    Unsuccessfull create User with username already exists
    [Tags]    cr8
    OpenPage
    Authentification avec username et password valid
    Adduser
    AccessAddUserPage
    Unsuccessful creating new user with username aleady exists
    Close Browser

TC9:Unsuccessful creating new user with Employee name doesn't exist
    [Documentation]    Unsuccessfull create User with Emnployee name doesn't exist
    [Tags]    cr9
    OpenPage
    Authentification avec username et password valid
    Adduser
    AccessAddUserPage
    Unsuccessful creating new user with Employee name doesn't exist
    Close Browser

TC10: Successful creating new user
    [Documentation]    Successful creating new user
    [Tags]    cr10
    OpenPage
    Authentification avec username et password valid
    Adduser
    AccessAddUserPage
    Successful creating new user
    Close Browser