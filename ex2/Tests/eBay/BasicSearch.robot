*** Settings ***
Documentation    Basic Search Functionality
Library  SeleniumLibrary

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  this test case vertify the basic search
    [Tags]  Functional
     start testcase
     verify search results
     end testcase

*** Keywords ***
start testcase
    Open Browser    http://www.ebay.com  chrome
verify search results
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press Keys  xpath://*[@id="gh-btn"]  [Return]
    Page Should Contain   results for mobile
end testcase
    Close Browser