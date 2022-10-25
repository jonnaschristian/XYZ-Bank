*** Settings ***
Documentation             Variables used in HomePage.robot.

*** Variables ***
${BANK_MANAGER_TEXT}      Bank Manager Login
${BANK_MANAGER_BUTTON}    xpath=//button[contains(@ng-click,'manager()')]
${CUSTOMER_BUTTON}        xpath=//button[contains(@ng-click,'customer()')]