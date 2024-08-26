Feature: Validar la correcta creación de usuario
  Background:
    Given url "https://petstore3.swagger.io/api/v3/user"

  Scenario Outline: Crear usuarios
    Given request
    """
    {
      "id": "<id>",
      "username": "<username>",
      "firstName": "<firstName>",
      "lastName": "<lastName>",
      "email": "<email>",
      "password": "<password>",
      "phone": "<phone>",
      "userStatus": "<userStatus>"
    }
    """
    When method post
    Then status 200
    * print response

    Examples:
      | read('./data3/data3.csv') |