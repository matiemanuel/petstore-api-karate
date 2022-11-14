Feature: Pet store API - Pets

  Background:
    * url baseURL
    * def petStatus = ['available','pending','sold']

  Scenario: Get pets by status (Sold)
    Given path '/pet/findByStatus'
    And param status = petStatus[2]
    When method GET
    Then status 200