Feature: Pet store API - Pets

  Background:
    * url baseURL
    * def petStatus = ['available','pending','sold']
    * def petUtils = Java.type('com.petstore.utils.PetUtils')

  Scenario: Get pets by status (Sold)
    Given path '/pet/findByStatus'
    And param status = petStatus[2]
    When method GET
    Then status 200
    And print petUtils.print()