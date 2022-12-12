*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://saucedemo.com
${browser}  chrome
${username}  id:user-name
${password}  id:password
${login_button}  //*[@id="login-button"]
${text_error}  //*[@id="login_button_container"]/div/form/div[3]

*** Test Cases ***
Verify log in fails - wrong username
    Open Browser  ${url}  ${browser}
    Input Text  ${username}  standard_us
    Input Text  ${password}  secret_sauce
    Click Button   ${login_button}
    Element Should Contain  ${text_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser
Verify log in fails - wrong password
    Open Browser  ${url}  ${browser}
    Input Text  ${username}  standard_us
    Input Text  ${password}  secret_saucedd
    Click Button   ${login_button}
    Element Should Contain  ${text_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser
Verify log in fails - locked out user
    Open Browser  ${url}  ${browser}
    Input Text  ${username}  locked_out_user
    Input Text  ${password}  secret_sauce
    Click Button   ${login_button}
    Element Should Contain  ${text_error}   Epic sadface: Sorry, this user has been locked out.
    Close Browser
Verify log in fails - blank username and password
    Open Browser  ${url}  ${browser}
    Input Text  ${username}  ${EMPTY}
    Input Text  ${password}  ${EMPTY}
    Click Button   ${login_button}
    Element Should Contain  ${text_error}   Epic sadface: Username is required
    Close Browser

*** Keywords ***
