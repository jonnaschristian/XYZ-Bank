*** Settings ***
Documentation                        Initialization of Website

Library                              SeleniumLibrary
Resource                             ../VariablesFlow/InitializationFlow.robot

**Keywords**
Take a Rest
    Sleep                            2

Open Google Browser
    [Documentation]                  Opens a new browser instance and access the google page.
    Open Browser                     browser=${BROWSER}
    Maximize Browser Window
    Go To                            url=${URL_GOOGLE}
    Wait Until Page Contains         google.com
    Go To                            url=${URL_XYZ}

Close Google Browser
    [Documentation]                  Logout, return to Google page and close current browser.
    Take a Rest                            
    Go To                            url=${URL_GOOGLE}
    Close Browser

Back Home
    Take a Rest
    Click Element                    ${HOME}

Logout
    Take a Rest
    Click Button    ${LOGOUT}
    Back Home