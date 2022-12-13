## Robot Framework exercise

### Pre-requisites 
- install Python and pip 
- use pip to install Robot Framework : 
` 
pip install robotframework
`
- use pip to install SeleniumLibrary: 
`pip install robotframework-seleniumlibrary`
- install Pycharm IDE and IntelliBot plugin
- download Selenium Browserdrivers for the browser
- install ChroPath extension in the browser


### Ex1: First test case in Robot Framework
Test if a website is opened in chrome by running the following command in terminal

`robot -d results Tests/Google/FunctionalTestSuite/GoogleSearch.robot`

then open the report.html file in the Results directory in chrome to see more details.  

### Ex2: Convert manual test into automation script 
#### Steps: 
- Browser is opened and a shopping website is launched 
- User clicks the search box and type certain words in the search box
- User clicks the search button
- The results show on the new webpage
- Browser is closed

#### Basics of locating webpage elements 
[Locating elements on Selenium Library](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Locating%20elements)

### Ex3: Move user defined keywords to resource directory
### Ex4: Test setup and teardown
### Ex5: Implement Page Object Model (POM) in Robot Framework
run ` robot -d results Tests/eBay/Verify_search_functionality.robot ` in terminal. 
### Ex6: Implement scala variable, list variable and dictionary variable
### Ex7: Refactor webelement locators
### Ex8: IF/ELSE statement and for loop
### Ex9: Data driven testing 
### Ex10: Jenkins Integration with Robot Framework
- Install Jenkins `brew install jenkins-lts` and `brew services start jenkins-lts` 
- Upgrade java version to at least 11  `brew install java11` and then `sudo ln -sfn /usr/local/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk` for you to find a java runtime to use and run `java --version` in terminal
- Run `http://127.0.0.1:8080/` on chrome to start Jenkins 
- Add SSH key and web hook to connect Jenkins with GitHub account 
