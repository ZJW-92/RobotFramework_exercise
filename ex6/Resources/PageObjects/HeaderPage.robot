*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${search_text}  mobile


*** Keywords ***
Input Search Text and Click Search
    Input Text  xpath://*[@id="gh-ac"]  ${search_text}
    Press Keys  id:gh-btn  [Return]
Click advanced search
    Click Element  //*[@id="gh-as-a"]