*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${search_text}  mobile
${search_list}  books  robots  mobiles
&{search_dictionary}  abc=books  bcd=robots  efg=mobiles
${search_text_box}   xpath://*[@id="gh-ac"]
${search_button}    xpath://*[@id="gh-btn"]
${advanced_search_button}   xpath://*[@id="gh-as-a"]
*** Keywords ***
Input Search Text and Click Search
    Input Text  ${search_text_box}  ${search_dictionary.bcd}
    Press Keys  ${search_button}   [Return]
Click advanced search
    Click Element  ${advanced_search_button}