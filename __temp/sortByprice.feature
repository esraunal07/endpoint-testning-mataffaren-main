Feature: Sort products by Price
  As a REST api user
  I want to be able to sort products by price
  and have the information be correct in all categories.

  Background:
    Given that I am on the domain "http://localhost:4000"

 
  Scenario: Get a list of all categories
    When I visit the endpoint "GET" "/api/leftMenu/categorytree"
    Then the status code of the response should be 200
    And the response time should be below 1000 milliseconds
    And there should be at least 500 categories

  Scenario Outline: Ascending price
    When I visit the endpoint "GET" "/api/c/{categoryUrlPart}?size=30&page=0&sort=price-asc"
    Then the status code of the response should be 200
    And the response time should be below 1000 milliseconds
    And there should be at least 1 product in the category
    And the products are sorted in order from "lowest" "price"

  Scenario Outline: Descending price
    When I visit the endpoint "GET" "/api/c/{categoryUrlPart}?size=30&page=0&sort=price-desc"
    Then the status code of the response should be 200
    And the response time should be below 1000 milliseconds
    And there should be at least 1 product in the category
    And the products are sorted in order from "highest" "price"

    Examples:
       | categoryUrlParts |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |
       |  |

    