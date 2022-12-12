*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${search_text}  mobile
${search_list}  books  robots  mobiles
&{search_dictionary}  abc=books  bcd=robots  efg=mobiles

*** Keywords ***
Input Search Text and Click Search
    Input Text  xpath://*[@id="gh-ac"]  ${search_dictionary.bcd}
    Press Keys  id:gh-btn  [Return]
Click advanced search
    Click Element  //*[@id="gh-as-a"]