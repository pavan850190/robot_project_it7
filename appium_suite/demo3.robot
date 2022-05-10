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
    Click Element    xpath=//*[@text='Dismiss']
    Click Element    xpath=//*[@content-desc='Settings']
    Click Element    xpath=//*[@text='Sign in']
    Click Element    xpath=//*[@text='Sign up with email']
    Input Text    xpath=//*[@text='First name']    pavan
    Input Text    xpath=//*[@text='Last name']    raj
    Swipe By Percent    start_x    start_y    end_x    end_y



