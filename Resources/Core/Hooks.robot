*** Settings ***
Documentation       File hook that contains all the file paths.

Library             SeleniumLibrary
Library             FakerLibrary
Library             String

# Core
Resource            Initialization.robot

# Page
Resource            ../Pages/AddCustomerPage.robot
Resource            ../Pages/BankManagerPage.robot
Resource            ../Pages/DepositPage.robot
Resource            ../Pages/HomePage.robot
Resource            ../Pages/LoggedInPage.robot
Resource            ../Pages/LoginPage.robot
Resource            ../Pages/OpenAccountPage.robot
Resource            ../Pages/WithdrawPage.robot

# Flow
Resource            ../VariablesFlow/AddCustomerFlow.robot
Resource            ../VariablesFlow/BankManagerFlow.robot
Resource            ../VariablesFlow/DepositFlow.robot
Resource            ../VariablesFlow/HomeFlow.robot
Resource            ../VariablesFlow/InitializationFlow.robot
Resource            ../VariablesFlow/LoggedInFlow.robot
Resource            ../VariablesFlow/LoginFlow.robot
Resource            ../VariablesFlow/OpenAccountFlow.robot
Resource            ../VariablesFlow/WithdrawFlow.robot