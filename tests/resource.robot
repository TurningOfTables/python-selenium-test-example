*** Settings ***
Documentation    A resource file with reusable keywords and variables.
Library    SeleniumLibrary
Library    Process

*** Variables ***
${SERVER}     http://localhost:8000
${BROWSER}    headlesschrome

*** Keywords ***
Open Site
    Open Browser    ${SERVER}    ${BROWSER}  options=add_argument("--disdff")

Test Setup
    Start Process    python    -m    http.server    8000    -d    sample_site

Test Teardown
    Close Browser
    Terminate All Processes