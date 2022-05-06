*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
Tc1
    Append To Environment Variable   Path    D:\\robotProject\\selenium_suite\\driver
    Open Browser     browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    Click Element    //a[@target='_blank']
    Switch Window
    Input Text    id=input_username    admin
    Input Text    id=input_password    admin123
    Click Element    id=input_go
    Element Should Contain    xpath=(//div[@role='alert'])[3]    Access denied for user
    Close Window
    Close Browser

