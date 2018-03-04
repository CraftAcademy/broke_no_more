Feature: Add a savings goal for the user to meet
  As a user
  In order to know how long it would take to save money
  I should be able to enter my savings goal

  Background:
    Given following user exist
    | email                 | password    |
    | antonella@email.com   | password123 |
    And I log in as 'antonella@email.com'


  Scenario: User enters their savings goal
    Given I am on home page
    When I click 'Savings Goal'
    Then I should see 'Enter Savings Goal'
    And I fill in 'Fill here' with '4000000'
    And I click 'Submit'
    Then I should see 'Savings Goal saved'
