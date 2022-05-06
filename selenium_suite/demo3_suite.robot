*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
Tc1
    Append To Environment Variable   Path    D:\\robotProject\\selenium_suite\\driver
    Open Browser    url=https://www.goto.com/meeting/     browser=gc
    Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/?d=jumbo1-btn-ft
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    id=truste-consent-button
    Click Element    link=Try Free
    Input Text    id=first-name    John
    Input Text    id=last-name    wick
    Input Text    id=login__email    john@gmail.com
    Input Text    id=contact-number    8989888
    Select From List By Label    id=CompanySize       10 - 99
    Click Element     xpath=//button[text()='Start My Trial']
    Click Element    xpath=(//div[@class='checkbox-ui])[1]
    Click Element    xpath=//span[contains(@id,'userPhone')]        Enter a valid phone number
    Close Browser
