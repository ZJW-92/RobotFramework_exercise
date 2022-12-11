*** Settings ***
Documentation    Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot

Test Setup  CommonFunctionality.start testcase
Test Teardown  CommonFunctionality.end testcase

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  this test case vertify the basic search
    [Tags]  Functional
     eBay_UserDefinedKeywords.verify search results
     eBay_UserDefinedKeywords.search results by different kinds
     eBay_UserDefinedKeywords.verify new results are displayed




