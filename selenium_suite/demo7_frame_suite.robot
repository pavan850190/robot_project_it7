*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
Tc1
    Append To Environment Variable   Path    D:\\robotProject\\selenium_suite\\driver
    Open Browser     browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame    xpath=//frame[@name='login_page']
    Input Text    name=fldLoginUserId       test123
    Click Element    link=CONTINUE
    Unselect Frame
