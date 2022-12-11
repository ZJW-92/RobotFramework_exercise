*** Settings ***
Library  SeleniumLibrary




*** Keywords ***

search results by different kinds
    Go To    https://www.ebay.com/
    Mouse Over  xpath://*[@id="gh-cat"]
    Sleep   1s
    Mouse Down  xpath://*[@id="gh-cat"]
    Select From List By Index  _sacat  1
    Press Keys  id:gh-btn  [Return]