Feature: Testing pagination
  As a REST api user I want to be able to test pagination and have the information be correct in all categories

  Background:
    Given that I am on the domain "http://localhost:4000"
    When I visit the endpoint "GET" "/api/leftMenu/categorytree"
    Then the status code of the response should be 200
    And the response time should be below 1000 milliseconds
    And there should be at least 500 categories

  Scenario Outline: Pagination
    When I visit the endpoint "GET" "/api/c/{categoryUrlPart}?size=30&page=1&sort=topRated"
    Then the status code of the response should be 200
    And the response time should be below 1000 milliseconds
    And there should be at least 1 product in the category
    And the test should show that the "responsedata" is equal "currentPage"

    Examples:
      | {dynamic: 'categoryUrlParts'} |