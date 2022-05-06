*** Settings ***
Library    OperatingSystem
*** Test Cases ***
Tc1
    Create File      path=D:\\robotProject\\robot_suite\\hii.txt
    ${list}  List Files In Directory    path=D:\\robotProject\\robot_suite\\
    Log To Console    ${list}
Tc2
    Remove File    path=D:\\robotProject\\robot_suite\\hii.txt
Tc3
    Create Dictionary       D:\\robotProject\\robot_suite2

