@test01
Feature: Validar la correcta creación de usuario
  Background:
    Given url "https://petstore3.swagger.io/api/v3/user"

  Scenario Outline: Crear usuarios
    Given request
    """
    {
      "id": <id>,
      "username": "<username>",
      "firstName": "<firstName>",
      "lastName": "<lastName>",
      "email": "<email>",
      "password": "<password>",
      "phone": "<phone>",
      "userStatus": <userStatus>
    }
    """
    When method post
    Then status 200
    And match response contains { id: <id>, username: '<username>', firstName: '<firstName>', lastName: '<lastName>', email: '<email>', password: '<password>', phone: '<phone>', userStatus: <userStatus> }
    * match username == /^[0-9().\/=,_-]*$/
#    * def response = karate.get('response')
#    * def usernamePattern = /^[a-zA-Z0-9_\-$]+$/
#    * def emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
#    * def passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/
#    * def phonePattern = /^\d{3}-\d{3}-\d{4}$/
#    * def validUserStatus = [0, 1] // Ajusta los valores según los válidos para tu caso
#
#    # Validación de username
#    * assert response.username.match(usernamePattern)
#
#    # Validación de email
#    * assert response.email.match(emailPattern)
#
#    # Validación de password
#    * assert response.password.match(passwordPattern)
#
#    # Validación de phone
#    * assert response.phone.match(phonePattern)
#
#    # Validación de userStatus
#    * assert validUserStatus.includes(response.userStatus)

    * print response
    Examples:
      | read('./data3/data5.csv') |

#    1. Validación de Campos Requeridos

