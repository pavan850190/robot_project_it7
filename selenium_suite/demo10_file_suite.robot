*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
Tc1
    Append To Environment Variable   Path    D:\\robotProject\\selenium_suite\\driver
    Open Browser     browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://smallpdf.com/pdf-to-word
    Choose File    xpath=//input[@type='file']    D:${/}123.pdf
    ${title}    Get Title
    Log To Console     ${title}
    ${loc}  Get Location
    Log To Console    ${loc}
