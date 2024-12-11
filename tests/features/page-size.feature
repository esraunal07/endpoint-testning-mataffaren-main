  Feature: Testing pageSize
  As a REST api user
  I want to be able to test pageSize
  and have the information be correct in all categories.

  Background:
    Given that I am on the domain "http://localhost:4000"


  Scenario: Get a list of all categories
    When I visit the endpoint "GET" "/api/leftMenu/categorytree"
    Then the status code of the response should be 200
    And the response time should be below 1000 milliseconds
    And there should be at least 500 categories

  Scenario Outline: PageSize
    When I visit the endpoint "GET" "/api/c/{categoryUrlPart}?size=10&page=0&sort=topRated"
    Then the status code of the response should be 200
    And the response time should be below 1000 milliseconds
    And there should be at least 1 product in the category
    And the test should show that the responseData is as most pageSize


    Examples:
      | {dynamic: 'categoryUrlParts'} |