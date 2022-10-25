*** Settings ***
Documentation                       Logged in page where I create the custom keywords.

Library                             SeleniumLibrary

Resource                            ../Core/Initialization.robot
Resource                            ../VariablesFlow/LoggedInFlow.robot

*** Keywords ***
My Account Must Be Logged In
    Wait Until Page Contains        Welcome            timeout=2
    
I'm Logged In
    Take a Rest
    My Account Must Be Logged In

Choose The Deposit Option    
    Take a Rest
    Click Button                    ${DEPOSIT_OPTION}

Choose The Withdraw Option
    Take a Rest
    Click Button                    ${WITHDRAW_OPTION}