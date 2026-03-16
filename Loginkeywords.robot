*** Settings ***
Library    Selenium2Library

*** Keywords ***
Login with standard user
    Open Browser   https://demo.testim.io/    browser=Chrome

Login correctly fu
    Login with standard user
    Click Element    //*[@id="app"]/div/header/div/div[2]/ul/li/button
    Click Element    //*[@id="login"]/div[1]/input
    Input Text    //*[@id="login"]/div[1]/input    John
    Click Element    //*[@id="login"]/div[2]/input
    Input Text    //*[@id="login"]/div[2]/input    password
    Click Element    //*[@id="app"]/div/section[3]/div/div[2]/div/nav/button[2]