Feature: Pruebas para la API de la PetStore

  Background:
    * url 'https://petstore.swagger.io/v2'



  Scenario Outline: Creación de un usuario - <id> - <username>
    Given path '/user'
    And request { id: '<id>' , username: '<username>', email: '<email>' }
    When method post
    Then status 200


    Examples:
      | read('datos.csv') |


  Scenario Outline: Buscar un usuario existente -  <id> - <username>
    Given path '/user/<username>'
    When method get
    Then status 200


    Examples:
      | read('datos.csv') |

  Scenario Outline: Actualizar nombre y correo del usuario - <id> - <newUsername>
    Given path '/user/<username>'
    And request {  id: '<id>', username: '<newUsername>', email: '<newEmail>' }
    When method put
    Then status 200

    Examples:
      | read('datos.csv') |

  Scenario Outline: Buscar un usuario actualizado - <id> - <newUsername>
    Given path '/user/<newUsername>'
    When method get
    Then status 200
   Examples:
     | read('datos.csv') |

  Scenario Outline: Eliminar un usuario existente <id> - <newUsername>
    Given path '/user/<newUsername>'
    When method delete
    Then status 200
    Examples:
      | read('datos.csv') |
