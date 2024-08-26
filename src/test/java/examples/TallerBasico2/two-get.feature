Feature: Buscar los perros

  Background:
    Given url "https://petstore.swagger.io"

  Scenario: Buscar el perro 1
    And path "/v2/pet/4"
    When method get
    Then status 200
    * print response