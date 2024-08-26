Feature: Consultar Perros
  Background:
    Given url "https://petstore.swagger.io"
  Scenario:
    * def respuesta = read('../Requerimientos/archivo_get.json')
    And path "/v2/pet/6"
    When method get
    Then status 200
    * print response