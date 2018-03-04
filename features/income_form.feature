Feature: User can enter monthly income
  As a user
  In order to know how much money I can save
  I should be able to enter my monthly income

  Background:
    Given following user exist
    | email                 | password |
    | antonella@email.com   | password123 |
    And "antonella@email.com" is logged in

  Scenario: User enters their monthly income
    Given I am on home page
    When I click 'New Income'
    And I should see 'YOUR INCOMES'
    And I fill in 'Fill here' with '30000'
    And I click 'Submit'
    Then I should see 'Income successfully added'
