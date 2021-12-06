*** Settings ***
Documentation   To validate the amazon checkout
Library     SeleniumLibrary
Resource        ../PageObject/Amazon.robot
Test Teardown   Close Browser


*** Test Cases ***

Validate Amazon Checkout
    [Tags]      Sanity Test
    open the browser with amazone url
    click on all dropdown and select electronic
    Search for one plus Mobile
    #Select the brand as OnePlus checkbox
    Select one mobile and Fetch the Price of the Mobile
    Add the mobile to CART
    #Click on Save For Later



