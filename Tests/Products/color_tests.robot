*** Settings ***
Resource    ../../Keywords/keywords.resource

*** Test Cases ***
Adding a product with color shows success
    Given user access the Lojinha's website
    And log in
    When access the add product page
    And Write the product's name with letters
    And Write a product with value R$ 7.000,00
    And Write the product's color with letters
    And submit the addition of the product
    Then confirm addition success    

Adding a product with no color shows error
    Given user access the Lojinha's website
    And log in
    When access the add product page
    And write the product's name with letters
    And write a product with value R$ 7.000,00
    And submit the addition of the product
    Then confirm addition error

Adding a product with symbols in it's colors shows error
    Given user access the Lojinha's website
    And log in
    When access the add product page
    And write the product's name with letters
    And write a product with value R$ 7.000,00
    And write the product's color with symbols
    And submit the addition of the product
    Then confirm addition error