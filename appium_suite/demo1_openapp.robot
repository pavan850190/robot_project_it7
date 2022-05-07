*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
Tc1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=pavanraj_o4QGcU
    ...     browserstack.key=fSpobzNiisxzBxtbzCPG
    ...     app=bs://e818cb9f44be9409a5599f07c09fc6a1d639c598
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    Close Application
