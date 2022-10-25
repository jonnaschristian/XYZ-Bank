*** Settings ***
Documentation                       Bank manager login page where I create the custom keywords.

Library                             SeleniumLibrary

Resource                            ../Core/Initialization.robot
Resource                            ../VariablesFlow/BankManagerFlow.robot

*** Keywords ***
Choose The Add Customer Option
    Take a Rest
    Click Button                    ${ADD_CUSTOMER_OPTION}

Choose The Open Account Option
    Take a Rest
    Click Button                    ${OPEN_ACCOUNT_OPTION}