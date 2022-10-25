*** Settings ***
Documentation                       Open account page where I create the custom keywords.

Library                             SeleniumLibrary
Library                             String

Resource                            ../Core/Initialization.robot
Resource                            ../Pages/AddCustomerPage.robot
Resource                            ../VariablesFlow/OpenAccountFlow.robot

*** Keywords ***
Select The Requested Information
    [Documentation]                Open account by selecting a created user and the currency that user will want.
    ...                            The Generate Random String keyword from the String library is used for this.
    # Customer Name
    Take a Rest
    Click Element                  ${CUSTOMER}
    Select From List By Index      ${CUSTOMER}               6
    
    # Currency
    ${RANDOM_RANGE_CURRENCY}=      Generate random string    1    123
    Take a Rest
    Click Element                  ${CURRENCY}
    Select From List By Index      ${CURRENCY}               ${RANDOM_RANGE_CURRENCY}               

Click On The Process Button
    Take a Rest
    Click Button                   ${PROCESS_BUTTON}

My Account Must Be Opened
    My Account Must Be Created