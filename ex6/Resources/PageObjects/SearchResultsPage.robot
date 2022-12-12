*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/PageObjects/SearchResultsPage.robot

*** Variables ***
${search_result}  results for
${search_link}  https://www.ebay.com/

*** Keywords ***
verify search results
    Page Should Contain   ${search_result}  ${search_text}
search results by different kinds
    Go To    ${search_link}
    Mouse Over  xpath://*[@id="gh-cat"]
    Sleep   1s
    Mouse Down  xpath://*[@id="gh-cat"]
    Select From List By Index  _sacat  1
    Press Keys  id:gh-btn  [Return]
verify new results are displayed
    Page Should Contain  Antiques