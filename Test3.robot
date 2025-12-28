*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        file:///C:/Users/User/TestAutomationLab/StarterFiles/Registration.html

*** Test Cases ***
Register Fail

    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=lastname      Sodyod
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         091-001-1234
    Click Button  id=registerButton
    Sleep    3s

    Page Should Contain    Please enter your first name!!
    Close Browser
