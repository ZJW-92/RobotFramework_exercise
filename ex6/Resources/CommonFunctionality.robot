*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${scala_va}  qa
&{url}  qa=https://www.ebay.com/  uat=https://www.amazon.com/

*** Keywords ***
start testcase
    Open Browser   ${url.${scala_va}}  chrome
end testcase
    Close Browser