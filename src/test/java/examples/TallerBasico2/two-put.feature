Feature: Actualizar uno de los perros de la lista
  Background:
    Given url "https://petstore.swagger.io/v2/pet"

  Scenario: Actualizar el perro 1
    And request {"id": 4,"category": {"id": 0,"name": "Perros chistoso"},"name": "popistacio","photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
    When method put
    Then status 200
    * print response