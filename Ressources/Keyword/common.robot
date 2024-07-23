*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    chrome

*** Keywords ***
OpenPage
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
