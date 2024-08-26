Feature: Registro de usuario

  Background:

    Given url "https://reqres.in/api/users"
    * def body = read('../Requerimientos/request1.json')

  Scenario Outline: Registro de <Casos> por escenario outline
    And request body
    When method post
    Then status 201
    And match response.name == '#regex [A-Za-z0-9 .()\\/$=,_\\-\\\\]+'
    * print response

    Examples:
      |read('../data/data.csv')|