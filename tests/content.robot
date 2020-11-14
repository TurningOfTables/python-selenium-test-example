*** Settings ***
Library          SeleniumLibrary
Documentation    Lorem Ipsum Plc - Page Content
Resource         ./resources/resource.robot
Test Setup       Test Setup
Test Teardown    Test Teardown

*** Test Cases ***
Nav Bar
    Open Site
    Element Should Be Visible  css:.nav-container
    Element Should Be Visible  css:#home-link
    Element Should Be Visible  css:#login-link

Header
    Open Site
    Element Should Be Visible  css:#header
    Element Should Be Visible  css:#company-name

Intro
    Open Site
    Element Should Be Visible  css:#intro
    Element Should Be Visible  css:#intro-heading

Products
    Open Site
    Element Should Be Visible  css:#products
    Element Should Be Visible  css:#products-heading

Testimonials
    Open Site
    Element Should Be Visible  css:#testimonials
    Element Should Be Visible  css:#testimonials-heading

Contact Us
    Open Site
    Element Should Be Visible  css:#contact
    Element Should Be Visible  css:#contact-heading