*** Settings ***
Documentation    Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  this test case vertify the basic search
    [Tags]  Functional
     start testcase
     verify search results
     search results by different kinds
     verify new results are displayed
     end testcase



