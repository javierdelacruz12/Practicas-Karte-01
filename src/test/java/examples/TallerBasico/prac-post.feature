Feature: Registrar lista de Perros
Background:
    Given url "https://petstore.swagger.io/v2/pet"
    * def body = {"id": 3,"category": {"id": 0,"name": "Perros chiso"},"name": "doggie de pepe","photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "available"}

  Scenario: Registrar un nuevo perro
    And request body
    When method post
    Then status 200
    * print response







