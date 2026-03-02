*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${REMOTE_URL}    http://selenium:4444/wd/hub

*** Test Cases ***
Open Herokuapp
    Open Browser    https://the-internet.herokuapp.com    chrome    remote_url=${REMOTE_URL}
    Title Should Be    The Internet
    Close Browser