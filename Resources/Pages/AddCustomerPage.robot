*** Settings ***
Documentation                       Add customer page where I create the custom keywords.

Library                             SeleniumLibrary
Library                             FakerLibrary

Resource                            ../Core/Initialization.robot
Resource                            ../VariablesFlow/AddCustomerFlow.robot

*** Keywords ***
Fill In The Requested Information
    [Documentation]                Fill in the required information using random first name, last name and post code.
    ...                            The faker library is used for this.
    # First Name
    ${RANDOM_FIRST_NAME}=          FakerLibrary.First Name
    Take a Rest
    Input Text                     ${FIRST_NAME}                     ${RANDOM_FIRST_NAME}

    # Last Name
    ${RANDOM_LAST_NAME}=           FakerLibrary.Last Name
    Take a Rest
    Input Text                     ${LAST_NAME}                      ${RANDOM_LAST_NAME}

    # Post Code
    ${RANDOM_POST_CODE}=           FakerLibrary.Postalcode
    Take a Rest
    Input Text                     ${POST_CODE}                      ${RANDOM_POST_CODE}

Click On The Add Customer Button
    Take a Rest
    Click Button                   ${ADD_CUSTOMER_BUTTON}

My Account Must Be Created
    Take a Rest
    Handle Alert                   action=ACCEPT