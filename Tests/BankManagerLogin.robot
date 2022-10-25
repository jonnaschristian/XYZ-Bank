*** Settings ***
Documentation       Test suite responsible for creating a new bank account and opening a bank account.

Resource            ../Resources/Core/Hooks.robot

Suite Setup         Open Google Browser

Test Teardown       Back Home

*** Test Cases ***
01 - Scenario: Register a new user in the bank
    Given I'm On The Homepage
    When Click On The Bank Manager Login Button
    And Choose The Add Customer Option
    And Fill In The Requested Information
    When Click On The Add Customer Button
    Then My Account Must Be Created
   
02 - Scenario: Open a new bank account
    Given I'm On The Homepage
    When Click On The Bank Manager Login Button
    And Choose The Open Account Option
    And Select The Requested Information
    When Click On The Process Button
    Then My Account Must Be Opened