Feature: Crear un usuario con metodo post
  Background:
     *
  Scenario:Crear un usuario
    Given url "https://reqres.in/api/users"
    And request {"name": "Javier","job": "QA"}
    When method post
    Then status 201
    * print response
    * print request


