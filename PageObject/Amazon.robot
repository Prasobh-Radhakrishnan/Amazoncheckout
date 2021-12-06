*** Settings ***
Documentation     All the page objects and keywords of Amazon
Library           SeleniumLibrary


*** Keywords ***
open the browser with amazone url
    Create Webdriver    Chrome  executable_path=../Resources/chromedriver.exe
    Go To   https://www.amazon.in/

click on all dropdown and select electronic
    SELECT FROM LIST BY VALUE  xpath=//*[@id="searchDropdownBox"]    search-alias=electronics

Search for one plus Mobile
    Input Text  id:twotabsearchtextbox  Oneplus Mobile
    click button  id:nav-search-submit-button

#Select the brand as OnePlus checkbox # not using this scnerio as amazon is not displaying the brand checkbox when searching by the exact brand name
    #click element  xpath=//*[@id="OnePlus"]/span/a/span

Select one mobile and Fetch the Price of the Mobile
    click element  xpath=//span[contains(text(),"OnePlus Nord CE 5G")]
    switch window  NEW
    ${Price}=   get text  id:priceblock_dealprice

Add the mobile to CART
    click button  id:add-to-cart-button

#Click on Save For Later # Not using this scnerio as the script is not loggin in to the application and the save for lated is not present when user is not logged into the application


