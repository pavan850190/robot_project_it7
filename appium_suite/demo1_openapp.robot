*** Settings ***
Library    AppiumLibrary
Test Teardown      Close Application
*** Test Cases ***
Tc1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=pavanraj_o4QGcU
    ...     browserstack.key=fSpobzNiisxzBxtbzCPG
    ...     app=bs://c1d2b0e0778956abacad246f0ad6dcdcf71e8cdc
    ...     device=Samsung Galaxy S10e
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}
    Set Appium Timeout    50s
    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']  50s
    Click Element    xpath=//*[@text='Dismiss']
    Wait Until Page Contains Element    xpath=//*[@text='Sign in']  50s
    Click Element    xpath=//*[@text='Sign in']
    Wait Until Page Contains Element    xpath=//*[@text='Sign in']  50s
    Click Element    xpath=//*[@text='Sign in']
    Wait Until Page Contains Element    xpath=//*[@text='Enter an e-mail address or username']  50s
    Input Text    xpath=//*[@text='Enter an e-mail address or username']          hello@gmail.com
    Wait Until Page Contains Element    xpath=//*[@text='Password']  50s
    Input Password    xpath=//*[@text='Password']     123456
    Click Element    xpath=(//*[@text='Sign in'])[2]
    Element Text Should Be    xpath=//*[contains(@text,'issue')]    There was an issue signing in



