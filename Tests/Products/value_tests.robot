*** Settings ***
Resource    ../../Keywords/keywords.resource

*** Test Cases ***
Adding a product with value R$ 0,00 shows error
    Given user access the Lojinha's website
    And log in
    When access the add product page
    And write the product's name with letters
    And write a product with value R$ 0,00
    And write the product's color with letters
    And submit the addition of the product
    Then confirm addition error

Adding a product with value R$ 0,01 shows success
    Given user access the Lojinha's website
    And log in
    When access the add product page
    And write the product's name with letters
    And write a product with value R$ 0,01
    And write the product's color with letters
    And submit the addition of the product
    Then confirm addition success

Adding a product with value R$ 7.000,00 shows success
    Given user access the Lojinha's website
    And log in
    When access the add product page
    And write the product's name with letters
    And write a product with value R$ 7.000,00
    And write the product's color with letters
    And submit the addition of the product
    Then confirm addition success

Adding a product with value R$ 7.000,01 shows error
    Given user access the Lojinha's website
    And log in
    When access the add product page
    And write the product's name with letters
    And write a product with value R$ 7.000,01
    And write the product's color with letters
    And submit the addition of the product
    Then confirm addition error