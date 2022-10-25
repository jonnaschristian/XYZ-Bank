*** Settings ***
Documentation                       Login page where I create the custom keywords.

Library                             SeleniumLibrary

Resource                            ../Core/Initialization.robot
Resource                            ../VariablesFlow/LoginFlow.robot

*** Keywords ***
Select My Credentials
    [Documentation]                View the list of clients and select the one I just created.
    Take a Rest
    Click Element                  ${CREDENTIALS}
    Select From List By Index      ${CREDENTIALS}      6

Click On The Login Button
    Take a Rest
    Click Button                   ${LOGIN_BUTTON}