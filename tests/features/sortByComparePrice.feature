Feature: Sort products by Compareprice
  As a REST api user
  I want to be able to sort products by compareprice
  and have the information be correct in all categories.

  Background:
    Given that I am on the domain "http://localhost:4000"
  Scenario: Get a list of all categories
    When I visit the endpoint "GET" "/api/leftMenu/categorytree"
    Then the status code of the response should be 200
    And the response time should be below 1000 milliseconds
    And there should be at least 500 categories

  Scenario Outline: Ascending compareprice
    When I visit the endpoint "GET" "/api/c/{categoryUrlPart}?size=30&page=0&sort=compareprice-asc"
    Then the status code of the response should be 200
    And the response time should be below 1000 milliseconds
    And there should be at least 1 product in the category
    And the products sorted in order from "lowest" "comparePrice"

  Scenario Outline: Descending compareprice
    When I visit the endpoint "GET" "/api/c/{categoryUrlPart}?size=30&page=0&sort=compareprice-desc"
    Then the status code of the response should be 200
    And the response time should be below 1000 milliseconds
    And there should be at least 1 product in the category
    And the products sorted in order from "highest" "comparePrice"


    Examples:
      | {dynamic: 'categoryUrlParts'} |