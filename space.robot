*** Settings ***
Library    Selenium2Library
Library    Collections
Resource    Loginkeywords.robot

*** Test Cases ***
Login correctly
    Login with standard user
    Click Element    //*[@id="app"]/div/header/div/div[2]/ul/li/button
    Click Element    //*[@id="login"]/div[1]/input
    Input Text    //*[@id="login"]/div[1]/input    John
    Click Element    //*[@id="login"]/div[2]/input
    Input Text    //*[@id="login"]/div[2]/input    password
    Click Element    //*[@id="app"]/div/section[3]/div/div[2]/div/nav/button[2]
    

Login incorrectly
    Login with standard user
    Click Element    //*[@id="app"]/div/header/div/div[2]/ul/li/button
    Click Element    //*[@id="login"]/div[1]/input
    Input Text    //*[@id="login"]/div[1]/input    *
    Click Element    //*[@id="login"]/div[2]/input
    Input Text    //*[@id="login"]/div[2]/input    password
    Click Element    //*[@id="app"]/div/section[3]/div/div[2]/div/nav/button[2]

Log out
    Login with standard user
    Login correctly fu
    Click Element    //*[@id="app"]/div/header/div/div[2]/ul/div/button
    Click Element    //*[@id="app"]/div/header/div/div[2]/ul/div/ul/li/a

*** Test Cases ***

Main page load
    Login with standard user
    Login correctly fu
    Element Should Be Visible    //*[@id="app"]/div/section[2]

Menu items
    Login with standard user
    Login correctly fu
    Click Element    //*[@id="app"]/div/section[2]/div[3]/div/div/div[1]/div/input
    Click Element    //*[@id="app"]/div/section[2]/div[3]/div/div/div[1]/ul/li[3]
    Click Element    //*[@id="app"]/div/section[2]/div[3]/div/div/div[2]/div/input
    Click Element    //*[@id="app"]/div/section[2]/div[3]/div/div/div[2]/ul/li[3]
    Click Element    //*[@id="app"]/div/footer/div[2]/div[2]/span

*** Test Cases ***
Items list
    Login with standard user