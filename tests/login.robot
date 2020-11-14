*** Settings ***
Library          SeleniumLibrary
Documentation    Lorem Ipsum Plc - Login
Resource         resource.robot
Test Setup       Test Setup
Test Teardown    Test Teardown

*** Test Cases ***
Open Login Form
    Open Site
    Element Should Not Be Visible  css:#login-popup
    Click Element  css:#login-link
    Element Should Be Visible  css:#login-popup

Close Login Form
    Open Site
    Click Element  css:#login-link
    Element Should Be Visible  css:#login-popup
    Click Element  css:#login-popup-close

Valid Login
    Open Site
    Click Element  css:#login-link
    Input Text  css:#username  User42
    Input Text  css:#password  guest
    Click Element  css:#form-submit
    Wait Until Element Is Visible  css:.form-success-container

Invalid Login
    Open Site
    Click Element  css:#login-link
    Input Text  css:#username  User42
    Input Text  css:#password  foo
    Click Element  css:#form-submit
    Wait Until Element Is Visible  css:.form-failure-container