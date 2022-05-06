*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
Tc1
    Append To Environment Variable   Path    D:\\robotProject\\selenium_suite\\driver
    Open Browser    url=https://www.facebook.com/     browser=gc
    Input Text    id=email    gpr@gmai.com
    Input Password    id=pass    123456
    Click Element
    Close Browser
