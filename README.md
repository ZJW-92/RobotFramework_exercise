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
- download Selenium Browserdrivers for the browsers


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
