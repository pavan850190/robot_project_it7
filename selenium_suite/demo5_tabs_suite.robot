*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
Tc1
    Append To Environment Variable   Path    D:\\robotProject\\selenium_suite\\driver
    Open Browser     browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.medibuddy.in/
    Click Element    id=wzrk-cancel
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Input Text    id=getInTouchName    pavan
    Input Text    id=getInTouchEmail    pavan@gmail.com
    Input Text    id=getInTouchMobile    12345
    Input Text    id=getInTouchDesignation    it
    Input Text    id=getInTouchEmpCount    25
    Click Element    xpath=//button[text()='Get in Touch']
    Element Text Should Be    xpath=//div[contains(text(),'digits')]    Mobile Number should be 10 digits
    Element Should Contain    xpath=//p[contains(text(),'while')]       let us help you take care of your employee health and wellness.
