*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/keywords.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test



*** variables ***
${BROWSER}  chrome
${URL}  https://www.amazon.com/



*** Test Cases ***
User can access amazon.com
    [Documentation]     Basic info about the test
    [Tags]      Test1
    Go to Web Page

User can get them fire fingerboards
     [Documentation]     Basic info about the test
    [Tags]      Test2
    Go to Web Page
    Search for Product  fingerboard  results for "fingerboard"
