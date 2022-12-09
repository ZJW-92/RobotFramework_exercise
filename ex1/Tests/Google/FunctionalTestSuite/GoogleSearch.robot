*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
This is sample test case
     [Documentation]  Google test
     [Tags]  regression
     Open Browser  http://www.google.com  chrome
     Close Browser
*** Keywords ***