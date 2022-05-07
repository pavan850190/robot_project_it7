Library    Collections
Library    OperatingSystem
*** Settings ***
*** Variables ***
@{COLORS}   red     yellow    green
&{MY_DETAILS}   name=pavan     role=intern     location=hyd
*** Test Cases ***
Tc1
    Log To Console    ${MY_DETAILS}[name]
    Log To Console    ${MY_DETAILS}[role]
TC2
    FOR    ${i}    IN RANGE    0    3    1
        Log    ${COLORS}[${i}]
        Log To Console    ${COLORS}[${i}]

    END
Tc3
    FOR    ${i}    IN    @{COLORS}
        Log    ${i}
        Log To Console    ${i}
         
    END