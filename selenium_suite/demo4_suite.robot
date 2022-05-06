*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
Tc1
    Append To Environment Variable   Path    D:\\robotProject\\selenium_suite\\driver
    Open Browser     browser=gc
    Maximize Browser Window
    Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/?d=jumbo1-btn-ft
    Set Selenium Implicit Wait    30s
    Input Text    name=UserFirstName    John
    Input Text    name=UserLastName    wick
    Input Text    name=UserEmail    john@gmail.com
    Select From List By Label    name=UserTitle IT Manager
    Input Text    name=CompanyName    LT
    Select From List By Value    name=CompanyEmployees       250
    Select From List By Label    name=CompanyCountry        
    Click Element     xpath=//button[text()='Start My Trial']
    Click Element    xpath=(//div[@class='checkbox-ui])[1]
    Element Text Should Be    xpath=//span[contains(@id,'userPhone')]        Enter a valid phone number
    Close Browser
