Feature: Be able to enter monthly fixed costs
  As a user
  In order to know what my fixed cost total is
  I should be able to enter all the fields

  Background:
    Given following user exist
      | email                 | password |
      | antonella@email.com   | password123 |
    And "antonella@email.com" is logged in

  Scenario: Fills in fixed costs form
    Given I am on home page
    When I click 'New Expense'
    Then I should see 'YOUR EXPENSES'
    And I fill in 'Rent' field with '30000'
    And I fill in 'Insurance' field with '300'
    And I fill in 'Transportation' field with '1000'
    And I fill in 'Education' field with '380'
    And I fill in 'Food' field with '3500'
    And I click 'Submit'
    Then I should see 'Expense saved!'
