*** Settings ***
Documentation       Test suite responsible for logging in the new bank customer and performing transactions on their account.

Resource            ../Resources/Core/Hooks.robot

Suite Teardown      Close Google Browser


*** Test Cases ***
01 - Scenario: Login with the new bank customer
    Given I'm On The Homepage
    When Click On The Customer Login Button
    And Select My Credentials
    When Click On The Login Button
    Then My Account Must Be Logged In

02 - Scenario: Perform deposit to the logged in account
    Given I'm Logged In
    When Choose The Deposit Option
    And Enter The Amount I Will Deposit
    When Click On The Deposit Button
    Then The Deposit Transaction Must Be Carried Out

03 - Scenario: Perform withdraw to the logged in account
    [Teardown]        Logout
    Given I Made A Deposit
    When Choose The Withdraw Option
    And Enter The Amount I Will Withdraw
    When Click On The Withdraw Button
    Then The Withdraw Transaction Must Be Carried Out