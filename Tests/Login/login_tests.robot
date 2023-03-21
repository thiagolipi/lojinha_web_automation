*** Settings ***
Resource    ../../Keywords/keywords.resource

*** Test Cases ***
Login with valid user and password shows success
    Given user access the Lojinha's website
    And log in
    Then confirm login success

Login with invalid user and password shows error
    Given user access the Lojinha's website
    And try to log in with invalid user and password
    Then confirm login error