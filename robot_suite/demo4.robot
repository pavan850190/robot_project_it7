*** Settings ***
Library     SeleniumLibrary
Library    Collections

*** Variables ***
${MY_NAME}      Pavan raj
${ROLE}     Intern
@{COLORS}   red     yellow    green

*** Test Cases ***
Tc1
    Log To Console    ${MY_NAME}
Tc2
    Log To Console    ${MY_NAME}
    Log To Console    ${ROLE}
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]
Tc3
    @{fruit}    Create List     apple    grapes    orange
    Log To Console    ${fruit}[1]
    Append To List      ${fruit}    mango
    Log To Console    ${fruit}
    Remove From List    ${fruit}    1
    Log To Console    ${fruit}
    Insert Into List    ${fruit}    2    guva
    Log To Console    ${fruit}

