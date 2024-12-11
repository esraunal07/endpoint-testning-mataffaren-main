Feature: Sort products by Name
  As a REST api user
  I want to be able to sort products by name
  and have the information be correct in all categories.

  Background:
    Given that I am on the domain "http://localhost:4000"

  Scenario: Verify products are sorted by name
    When I visit the endpoint "GET" "/api/c/{categoryUrlPart}?size=30&page=0&sort=name"
    Then the status code of the response should be 200
    And the response time should be below 1000 milliseconds
    And the response should have products sorted by name