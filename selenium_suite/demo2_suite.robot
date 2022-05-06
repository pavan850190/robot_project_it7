*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
Tc1
    Append To Environment Variable   Path    D:\\robotProject\\selenium_suite\\driver
    Open Browser    url=https://www.facebook.com/     browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=Create New Account
    Input Text    name=firstname    pavan
    Input Text    name=lastname    raj
    Input Text    name=reg_email__    hello@gmail.com
    Input Text    name=reg_email_confirmation__    hello@gmail.com
    Input Password    id=password_step_input    1234567
    Select From List By Label    id=day     16
    Select From List By Label    id=month     Feb
    Select From List By Label    id=year       2000
    Click Element    xpath=//input[@value='2']
    Click Element    name=websubmit
    Close Browser

//tagname[contains(@attribute,'')]
//tagname[contains(text