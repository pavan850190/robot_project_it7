*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
Tc1
    Append To Environment Variable   Path    D:\\robotProject\\selenium_suite\\driver
    Open Browser    url=https://phptravels.net/hotels     browser=gc
    Click Element    id=select2-hotels_city-container
    Input Text    xpath=//input[@type='search']    mysore
    Click Element    xpath=//li[text()='Mysore,India']
    Execute Javascript      document.querySelector('[id=checkin]').value='15-05-2022'
    Execute Javascript      document.querySelector('[id=checkout]').value='18-05-2022'
