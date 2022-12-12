*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_link}  https://www.ebay.com/

*** Keywords ***

search results by different kinds
    Go To    ${search_link}
    Mouse Over  xpath://*[@id="gh-cat"]
    Sleep   1s
    Mouse Down  xpath://*[@id="gh-cat"]
    Select From List By Index  _sacat  1
    Press Keys  id:gh-btn  [Return]