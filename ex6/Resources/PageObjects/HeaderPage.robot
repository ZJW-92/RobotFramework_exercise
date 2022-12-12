*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${search_text}  mobile
${search_list}  books  robots  mobiles

*** Keywords ***
Input Search Text and Click Search
    Input Text  xpath://*[@id="gh-ac"]  ${search_list}[1]
    Press Keys  id:gh-btn  [Return]
Click advanced search
    Click Element  //*[@id="gh-as-a"]