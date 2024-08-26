Feature: Actulizar el Regsitro de Perro

  Scenario: Actulizamos el registro del Perro 2
    Given url "https://petstore.swagger.io/v2/pet"
    And request {"id": 3,"category": {"id": 0,"name": "Chiwawa"},"name": "Peque","photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
    When method put
    Then status 200
    * print response
