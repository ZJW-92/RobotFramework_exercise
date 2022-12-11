*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Keywords ***
start testcase
    Open Browser   https://www.ebay.com/  chrome
end testcase
    Close Browser