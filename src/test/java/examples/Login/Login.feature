Feature: Login de usuario

  @Login
  Scenario: login de usuario
    Given url "https://apiqa-i3xs.onrender.com/api/v1/auth/login"
    And request {"correo":"pruebaqa@test.com","password": "prueba"}
    When method post
    Then status 200
    * def token = response.data.accessToken
    * print token