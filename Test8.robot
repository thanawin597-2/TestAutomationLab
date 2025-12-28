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
    Input Text    id=phone         1234
    Click Button  id=registerButton
    Sleep    3s

    Element Should Contain    id=errors    Please enter a valid phone number
    Close Browser
