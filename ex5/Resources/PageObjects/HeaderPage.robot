*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Keywords ***
Input Search Text and Click Search
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press Keys  id:gh-btn  [Return]
Click advanced search
    Click Element  //*[@id="gh-as-a"]