*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

*** Variables ***
${urlOrgano}       http://localhost:3000/
${browser}         chrome


*** Keywords ***
Start Automation
    Open Browser    ${urlOrgano}    ${browser}
	Maximize Browser Window
	# Set Selenium Speed    0.5
Stop Automation
    Capture Page Screenshot
    Close Browser