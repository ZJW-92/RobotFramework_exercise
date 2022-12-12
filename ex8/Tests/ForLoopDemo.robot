*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://ebay.com
${browser}  chrome
*** Variables ***
${search_text}  apple
${search_list}  books  robots  apple

*** Test Cases ***
Test case to run for loop statement in Robot Framework
    [Documentation]  Test case to run for loop in Robot Framework
    Open Browser  ${url}  ${browser}
    Input Text  //*[@id="gh-ac"]  ${search_text}
    Press Keys  xpath://*[@id="gh-btn"]   [Return]
    @{result_on_page}=  Get WebElements   xpath://*[@id="srp-river-results"]/ul/li[2]/div/div[2]/div[4]

    FOR  ${element}  IN  @{result_on_page}
          ${text}=  Get Text  ${element}
    END

    Close Browser
*** Keywords ***
