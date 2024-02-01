Feature: Pruebas para la API de la PetStore

  Background:
    * url 'https://petstore.swagger.io/v2'



  Scenario: Crear un usuario
    Given path '/user'
    And request { "id": 10001, "username": "PruebasAlex", "email": "usuario@ntt.com" }
    When method post
    Then status 200


  Scenario: Buscar un usuario existente
    Given path '/user/PruebasAlex'
    When method get
    Then status 200

  Scenario: Actualizar nombre y correo del usuario
    Given path '/user/PruebasAlex'
    And request { username: 'PruebasAlex_Update', email: 'alex_update@ntt.com' }
    When method put
    Then status 200

  Scenario: Buscar un usuario actualizado
    Given path '/user/PruebasAlex_Update'
    When method get
    Then status 200

  Scenario: Eliminar un usuario existente
    Given path '/user/PruebasAlex_Update'
    When method delete
    Then status 200


