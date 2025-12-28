*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        file:///C:/Users/User/TestAutomationLab/StarterFiles/Registration.html

*** Test Cases ***
Register Fail
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=firstname     Somyod
    Input Text    id=lastname      Sodsai
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Click Button  id=registerButton
    Sleep    3s

    Page Should Contain    Please enter your phone number!!
    Close Browser
