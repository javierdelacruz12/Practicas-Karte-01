Feature: Comprobar el comportamiento del sistema cuando faltan campos en la solicitud de creación de usuario
  Background:
    Given url "https://petstore3.swagger.io/api/v3/user"

  Scenario Outline: Faltan uno o más campos en la solicitud
    * def data = read('data3/data400.csv')
    * def row = data[<index>]
    Given request
    """
    {
      "id": "#(row.id)",
      "username": "#(row.username)",
      "firstName": "#(row.firstName)",
      "lastName": "#(row.lastName)",
      "email": "#(row.email)",
      "password": "#(row.password)",
      "phone": "#(row.phone)",
      "userStatus": "#(row.userStatus)"
    }
    """
    When method post
    Then status ${row.expectedStatus}
    And match response.message == "#(row.expectedMessage)"

    Examples:
      | index |
      | 0     |
      | 1     |