*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
Tc1
    Append To Environment Variable   Path    D:\\robotProject\\selenium_suite\\driver
    Open Browser     browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin
    Input Text    id=clearPass    pass
    Select From List By Value    name=languageChoice    18
    Click Element    id=login-button
    Switch Window    OpenEMR
    Click Element    xpath=//span[text()='Message Center']
    Select Frame    xpath=//iframe[@name='msg']
    Click Element    xpath=//a[text()='Add New']
    Select From List By Label    id=form_note_type      Pharmacy
    Select From List By Label    id=form_message_status     New
    Select From List By Label    id=users   Jarvis, Fred
    Input Text    xpath=//textarea[@id='note']    hello
    Click Element    id=newnote
    Element Should Contain    id=error_reply_to     Please choose a patient
    Unselect Frame
    Close Browser