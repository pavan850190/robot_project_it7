*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
Tc1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=pavanraj_o4QGcU
    ...     browserstack.key=fSpobzNiisxzBxtbzCPG
    ...     app=bs://ec01880279145c2a91d29996ab82ae871181a929
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    Close Application
