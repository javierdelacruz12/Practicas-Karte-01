@test001mvn
Feature: Consultar Perros
  
  Scenario: consultar la lista de perros 1
    Given url "https://petstore.swagger.io/"
    And path "/v2/pet/7"
    When method get
    Then status 200
    * print response

    Scenario: consultar lista de perror 2
      Given url "https://petstore.swagger.io/"
      And path "/v2/pet/2"
      When method get
      Then status 200
      * print response
