*** Settings ***
Documentation                       Deposit page where I create the custom keywords.

Library                             SeleniumLibrary
Library                             FakerLibrary

Resource                            ../Core/Initialization.robot
Resource                            ../VariablesFlow/DepositFlow.robot

*** Keywords ***
Enter The Amount I Will Deposit
    [Documentation]                Enter the amount that will be deposited with a random amount from the Faker library.
    ...                            Also set WITHDRAW_AMOUNT as global variable to use in another file.
    ${DEPOSIT_AMOUNT}=             FakerLibrary.Random Int
    Set Global Variable            ${WITHDRAW_AMOUNT}            ${DEPOSIT_AMOUNT}      
    Take a Rest
    Input Text                     ${DEPOSIT}                    ${DEPOSIT_AMOUNT}

Click On The Deposit Button
    Take a Rest
    Click Button                   ${DEPOSIT_BUTTON}

The Deposit Transaction Must Be Carried Out
    Wait Until Page Contains       Deposit Successful             timeout=2
    
I Made A Deposit
    Take a Rest
    The Deposit Transaction Must Be Carried Out