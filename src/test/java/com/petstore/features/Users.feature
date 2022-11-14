Feature: Pet store API - Users

  Background:
    * url baseURL
    * def testUser = 'matiemanuel'

  Scenario: Create an user
    Given path '/user'
    And def resBody = read("createUserResponse.json")
    And def reqBody = read("createUserRequest.json")
    And set reqBody
      | path       | value    |
      | username   | testUser |
      | id         | 0        |
      | userStatus | 1        |
    And request reqBody
    When method POST
    Then status 200
    And match response == resBody
    And print response

  Scenario: Get the created user
    Given path '/user/'+testUser
    And def resBody = read("getUserResponse.json")
    When method GET
    Then status 200
    And match response == resBody
    And match $.username == testUser