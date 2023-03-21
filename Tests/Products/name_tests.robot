*** Settings ***
Resource    ../../Keywords/keywords.resource

*** Test Cases ***
Adding a product with name show success
    Given user access the Lojinha's website
    And log in
    When access the add product page
    And write the product's name with letters
    And write a product with value R$ 7.000,00
    And write the product's color with letters
    And submit the addition of the product
    And confirm addition success

Adding a product with no name shows error
    Given user access the Lojinha's website
    And log in
    When access the add product page
    And write a product with value R$ 7.000,00
    And write the product's color with letters
    And submit the addition of the product
    Then confirm addition error

Adding a product with symbols in it's name shows success
    Given user access the Lojinha's website
    And log in
    When access the add product page
    And Write the product's name with symbols
    And write a product with value R$ 7.000,00
    And write the product's color with letters
    And submit the addition of the product
    And confirm addition success

Adding a product with 300+ characters name shows error
    Given user access the Lojinha's website
    And log in
    When access the add product page
    And write the product's name with 300+ letters
    And write a product with value R$ 7.000,00
    And write the product's color with letters
    And submit the addition of the product
    And confirm addition error