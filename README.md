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

### Exercises : 
- [Ex1: First test case in Robot Framework](https://github.com/ZJW-92/RobotFramework_exercise/blob/main/ex1/Tests/Google/FunctionalTestSuite/GoogleSearch.robot)

Test if a website is opened in chrome by running the following command in terminal

`robot -d results Tests/Google/FunctionalTestSuite/GoogleSearch.robot`

then open the report.html file in the Results directory in chrome to see more details.  

- [Ex2: Convert manual test into automation script](https://github.com/ZJW-92/RobotFramework_exercise/blob/main/ex2/Tests/eBay/BasicSearch.robot)
```
Steps: 
- Browser is opened and a shopping website is launched 
- User clicks the search box and type certain words in the search box
- User clicks the search button
- The results show on the new webpage
- Browser is closed
- Basics of locating webpage elements 
[Locating elements on Selenium Library](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Locating%20elements)
```

- [Ex3: Move user defined keywords to resource directory](https://github.com/ZJW-92/RobotFramework_exercise/blob/main/ex3/Tests/eBay/BasicSearch.robot)

- [Ex4: Test setup and teardown](https://github.com/ZJW-92/RobotFramework_exercise/blob/main/ex4/Tests/eBay/BasicSearch.robot)

- [Ex5: Implement Page Object Model (POM) in Robot Framework](https://github.com/ZJW-92/RobotFramework_exercise/blob/main/ex5/Tests/eBay/Verify_search_functionality.robot)
```
run  robot -d results Tests/eBay/Verify_search_functionality.robot  in terminal. 
```

- [Ex6: Implement scala variable, list variable and dictionary variable](https://github.com/ZJW-92/RobotFramework_exercise/blob/main/ex6/Tests/eBay/Verify_search_functionality.robot)

- [Ex7: Refactor webelement locators](https://github.com/ZJW-92/RobotFramework_exercise/blob/main/ex7/Tests/eBay/Verify_search_functionality.robot)
- [Ex8: IF/ELSE statement and for loop](https://github.com/ZJW-92/RobotFramework_exercise/tree/main/ex8/Tests)
-  [Ex9: Data driven testing ](https://github.com/ZJW-92/RobotFramework_exercise/blob/main/ex9/DataDrivenTesting.robot)
- [Ex10: Jenkins Integration with Robot Framework]()

1. Install Jenkins `brew install jenkins-lts` and `brew services start jenkins-lts` 
2. Upgrade java version to at least 11  `brew install java11` and then `sudo ln -sfn /usr/local/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk` for you to find a java runtime to use and run `java --version` in terminal
3. Run `http://127.0.0.1:8080/` on chrome to start Jenkins 
4. Add SSH key and web hook to connect Jenkins with GitHub account 

