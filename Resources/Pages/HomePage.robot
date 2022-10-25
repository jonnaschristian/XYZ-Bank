*** Settings ***
Documentation                       Homepage where I create the custom keywords.

Library                             SeleniumLibrary

Resource                            ../Core/Initialization.robot
Resource                            ../VariablesFlow/HomeFlow.robot

*** Keywords ***
I'm On The Homepage
    Take a Rest
    Wait Until Page Contains        Bank Manager Login        timeout=2

Click On The Bank Manager Login Button
    Take a Rest
    Click Button                    ${BANK_MANAGER_BUTTON}

Click On The Customer Login Button
    Take a Rest
    Click Button                    ${CUSTOMER_BUTTON}