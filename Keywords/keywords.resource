*** Settings ***
Library    SeleniumLibrary
Resource    ../Elements/variables.resource

*** Keywords ***
User access the Lojinha's website
    Open Browser    http://<domain>/lojinha-web/v2/    chrome
    Maximize Browser Window

Try to Log In with invalid user and password
    Input Text    ${input_user}    <user_ex>
    Input Text    ${input_password}    <password_ex>
    Click Element    ${button_submit}

Confirm Login Error
    Element Text Should Be    css=.toast.rounded    Falha ao fazer o login    

Log in
    Input Text    ${input_user}    <user_ex>    
    Input Text    ${input_password}    <password_ex>    
    Click Element    ${button_submit}

Confirm Login Success
    Element Should Be Visible    //*[@id="nav-mobile"]/li[1]/a

Access the Add Product page
    Click Element    ${button_addProduct}

Write the product's name with letters
    Wait Until Element Is Visible    ${input_productName}
    Input Text    ${input_productName}    Canoa

Write the product's name with 300+ letters
    Wait Until Element Is Visible    ${input_productName}
    Input Text    ${input_productName}    CanoaCanoaCanoaCanoaCanoaCanoaCanoaCanoaanoaCanoaCanoaCanoaCanoaCanoaCanoaCanoaanoaCanoaCanoaCanoaCanoaCanoaCanoaCanoaanoaCanoaCanoaCanoaCanoaCanoaCanoaCanoa

Write the product's name with symbols
    Wait Until Element Is Visible    ${input_productName}
    Input Text    ${input_productName}    !@#$%¨&*

Write a product with value R$ 0,00
    Input Text    ${input_productValue}    0

Write a product with value R$ 0,01
    Input Text    ${input_productValue}    001

Write a product with value R$ 7.000,00
    Input Text    ${input_productValue}    700000

Write a product with value R$ 7.000,01
    Input Text    ${input_productValue}    700001

Write the product's color with letters
    Input Text    ${input_productColor}    Marrom

Write the product's color with symbols
    Input Text    ${input_productColor}    !@#$%¨&*

Submit the addition of the product
    Click Element    ${button_save}

Confirm addition error
    Wait Until Element Is Visible    css=.toast.rounded
    Element Text Should Not Be    css=.toast.rounded    Produto adicionado com sucesso
    
    Close Browser
Confirm addition success
    Wait Until Element Is Visible    css=.toast.rounded
    Element Text Should Be    css=.toast.rounded    Produto adicionado com sucesso
    Close Browser