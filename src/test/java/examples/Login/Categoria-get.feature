Feature: Consulta de categorias

  Scenario: Consulta de una categoria
    * call read("../Login/Login.feature@Login")
    Given url "https://apiqa-i3xs.onrender.com/api/v2/find-category"
    And param IdCategoria = 18
    And header Authorization = 'Bearer ' + token
    When method get
    Then status 200
    * print response