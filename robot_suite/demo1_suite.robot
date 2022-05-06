*** Settings ***
Library    DateTime
*** Test Cases ***
TC1
    Log To Console    pavan

Tc2
    ${name}     Set Variable        pavan
    Log To Console    ${name}
    Log    ${name}
TC3
    ${radius}   Set Variable        10
    ${result}   Evaluate    3.14*${radius}+${radius}
    Log To Console    ${result}
Tc4
    ${base}   Set Variable        25
    ${height}   Set Variable        1
    ${result2}  Evaluate    ${base}*${height}/2
    Log To Console    ${result2}
Tc5
    ${base1}    Set Variable        25
    ${base2}    Set Variable        2.56
    ${height1}   Set Variable        10
    ${result3}  Evaluate        (${base1}+${base2})/2*${height1}
    Log To Console    ${result3}
Tc6
    ${time}     Get Current Date
    Log To Console      ${time}

