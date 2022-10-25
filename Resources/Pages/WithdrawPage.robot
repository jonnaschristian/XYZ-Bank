*** Settings ***
Documentation                       Withdraw page where I create the custom keywords.

Library                             SeleniumLibrary

Resource                            ../Core/Initialization.robot
Resource                            ../Pages/DepositPage.robot
Resource                            ../VariablesFlow/WithdrawFlow.robot

*** Keywords ***
Enter The Amount I Will Withdraw
    Take a Rest
    Input Text                     ${WITHDRAW}                     ${WITHDRAW_AMOUNT}

Click On The Withdraw Button
    Take a Rest
    Click Button                   ${WITHDRAW_BUTTON}

The Withdraw Transaction Must Be Carried Out
    Take a Rest
    Wait Until Page Contains       Transaction successful           timeout=2