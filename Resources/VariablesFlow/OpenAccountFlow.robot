*** Settings ***
Documentation             Variables used in OpenAccountPage.robot.

*** Variables ***
${CUSTOMER}               xpath=//select[contains(@name,'userSelect')]
${CURRENCY}               xpath=//select[contains(@name,'currency')]
${PROCESS_BUTTON}         xpath=//button[@type='submit'][contains(.,'Process')]