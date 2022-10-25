*** Settings ***
Documentation             Variables used in AddCustomerPage.robot.

*** Variables ***
${FIRST_NAME}             xpath=//input[contains(@ng-model,'fName')]
${LAST_NAME}              xpath=//input[contains(@ng-model,'lName')]
${POST_CODE}              xpath=//input[contains(@ng-model,'postCd')]
${ADD_CUSTOMER_BUTTON}    xpath://button[@type='submit'][contains(.,'Add Customer')]