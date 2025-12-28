*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        file:///C:/Users/User/TestAutomationLab/StarterFiles/Registration.html

*** Test Cases ***
Register Success With Organization
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=firstname     Somyod
    Input Text    id=lastname      Sodsai
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         091-001-1234
    Click Button  id=registerButton
    Sleep    3s

    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.
    Close Browser
