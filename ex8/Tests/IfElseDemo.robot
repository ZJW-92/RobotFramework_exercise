*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://saucedemo.com
${browser}  chrome

*** Test Cases ***
Test case to run IF/ELSE statement in Robot Framework
    [Documentation]  Test case to run IF/ELSE statement in Robot Framework
    Open Browser  ${url}  ${browser}
    Input Text   id:user-name  standard_user
    Input Text   id:password  secret_sauce
    Click Button   xpath://*[@id="login-button"]
    ${items_on_page}=  Get Element Count   xpath://*[@class="inventory_list"]/div
    Run Keyword If   ${items_on_page} == 10  Test Keyword 1  ELSE IF  5<${items_on_page}< 10  Test Keyword 2  ELSE   Test Keyword 3

*** Keywords ***
Test Keyword 1
     Log To Console  Executed Keyword1 - Found items as expected
     Close Browser
Test Keyword 2
     Log To Console  Executed Keyword2 - Found less items than expected
     Close Browser
Test Keyword 3
     Log To Console  Executed Keyword3 - Exception
     Close Browser