*** Settings ***
Documentation             Variables used in Initialization.robot.

*** Variables ***
${BROWSER}                googlechrome
${URL_XYZ}                https://www.way2automation.com/angularjs-protractor/banking/#/login
${URL_GOOGLE}             https://www.google.com

${HOME}                   xpath=//button[@class='btn home'][contains(.,'Home')]
${LOGOUT}                 xpath=//button[@ng-show='logout']