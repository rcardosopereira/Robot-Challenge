*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
Find Two Most Expensive Books In Launches Category
    Create Webdriver    Chrome
    Go To    https://www.amazon.com.br/
    Maximize Browser Window

    # First Most Expensive Book
    Log    Going to the 'Livros' category...
    Go To Category    Livros
    Sleep    5s
    Click Subcategory    xpath=//img[@alt='Lançamentos']
    Sleep    5s
    Log    Finding the first most expensive book...
    Click Element    //*[@id="acs-product-block-6"]/div[1]/a/img
    Sleep    3s
    Log    Adding the first most expensive book to the cart...
    Click Element    id=add-to-cart-button
    Sleep    3s

    # Second Most Expensive Book
    Log    Going to the 'Livros' category again...
    Go To Category    Livros
    Sleep    5s
    Click Subcategory    xpath=//img[@alt='Lançamentos']
    Sleep    5s
    Log    Finding the second most expensive book...
    Click Element    //*[@id="acs-product-block-0"]/div[1]/a/img
    Sleep    3s
    Log    Adding the second most expensive book to the cart...
    Click Element    id=add-to-cart-button
    Sleep    3s

    Close All Browsers

*** Keywords ***
Go To Category
    [Arguments]    ${category_name}
    Click Link    ${category_name}

Click Subcategory
    [Arguments]    ${subcategory_locator}
    Click Element    ${subcategory_locator}



