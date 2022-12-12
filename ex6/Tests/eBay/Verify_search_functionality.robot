*** Settings ***
Documentation    Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.start testcase
Test Teardown  CommonFunctionality.end testcase

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  this test case vertify the basic search
    [Tags]  Functional
    HeaderPage.Input Search Text and Click Search
    SearchResultsPage.verify search results
    SearchResultsPage.search results by different kinds
    SearchResultsPage.verify new results are displayed

Verify advanced search functionality
    [Documentation]  this test case vertify the advanced search
    [Tags]  Functional
    HeaderPage.Click advanced search



