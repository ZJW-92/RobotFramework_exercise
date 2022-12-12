*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${scala_va}  qa
&{url}  qa=https://www.ebay.com/  uat=https://www.amazon.com/
${browser}  chrome
*** Keywords ***
start testcase
    Open Browser   ${url.${scala_va}}  ${browser}
end testcase
    Close Browser