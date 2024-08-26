Feature: Creacion de animal

  Scenario: Registro de Mirelly
    Given url "https://reqres.in/api/users"
    And request {"name": "Mirelly","job": "Magister1"}
    When method post
    Then status 201

  Scenario: Registro de Julio
    Given url "https://reqres.in/api/users"
    And request {"name": "Julio","job": "Magister2"}
    When method post
    Then status 201

  Scenario: Registro de Natalia
    Given url "https://reqres.in/api/users"
    And request {"name": "Natalia","job": "Magister3"}
    When method post
    Then status 201
@pet01
  Scenario:  Creacion de animal
    Given url "https://petstore.swagger.io/v2/pet"
    * def valor = {"id": 987, "category": {  "id": 0,  "name": "gatiso" },  "name": "michino", "photoUrls": ["string"], "tags": [ {"id": 0,  "name": "string"}], "status": "available" }
    And request valor
    When method post
    Then status 200
    And match response == valor
    * print response
    And def idPet = response.id
    And print idPet