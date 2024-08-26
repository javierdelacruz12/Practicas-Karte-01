Feature: trae un usuario en específico
  Background:
    * def urlBase  = "https://reqres.in/"
    * def usersPath = "/api/users"
  Scenario: Listar Usuario especifico
    Given url urlBase + usersPath
    When method GET
    Then status 200
    And match $..first_name contains 'Michael'
    And match $..id contains '#notnull'
    * print response

