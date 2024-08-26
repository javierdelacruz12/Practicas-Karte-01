Feature:  Consulta la lista de los perros

  Scenario: Consulta de un perro
    Given url "https://petstore.swagger.io/v2"
    * call read("../TallerBasico3/pet-post.feature@pet01")
    And path "/pet/" + idPet
    When method get
    Then status 200
    * print response