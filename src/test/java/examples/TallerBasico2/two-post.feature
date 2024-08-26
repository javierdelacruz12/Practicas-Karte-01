Feature: Registro de Perros

  Background:
    Given url "https://petstore.swagger.io/v2/pet"


  Scenario: Registrar pero chiwawa
    Given url "https://petstore.swagger.io/v2/pet"   
    And request {"id": 1,"category": {"id": 0,"name": "Perros chiso"},"name": "popis1","photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
    When method post
    Then status 200
    * print response

  Scenario: Registrar pero chiwawa
    And request {"id": 2,"category": {"id": 0,"name": "Perros chiwawa"},"name": "popis2","photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
    When method post
    Then status 200
    * print response

  Scenario: Registrar pero chiwawa
    And request {"id": 3,"category": {"id": 0,"name": "Perros dalmata"},"name": "popis3","photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
    When method post
    Then status 200
    * print response

  Scenario: Registrar pero chiwawa
    And request {"id": 4,"category": {"id": 0,"name": "Perros Pastor aleman"},"name": "popis4","photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
    When method post
    Then status 200
    * print response

  Scenario Outline: Registro de información por escenario outline
    And request {"id": <id>,"category": {"id": <categoryId>,"name": "<categoryName>"},"name": "<name>","photoUrls": ["string"],"tags": [{"id": <tagId>,"name": "<tagName>"}],"status": "available" }
    When method post
    Then status 200
    * print response
    Examples:
      | id | categoryId | categoryName | name              | tagId | tagName |
      | 5  | 10         | Perros1      | Bulldog americano | 100   | Puppy1  |
      | 6  | 11         | Perros2      | Bulldog peruano   | 100   | Puppy2  |
      | 7  | 12         | Perros3      | Bulldog argentino | 100   | Puppy3  |
      | 8  | 13         | Perros4      | Bulldog chileno   | 100   | Puppy4  |