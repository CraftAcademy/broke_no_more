Feature: Be able to enter monthly fixed costs
  As a user
  In order to know what my fixed cost total is
  I should be able to enter all the fields

  Background:
    Given following user exist
    | email                 | password |
    | antonella@email.com   | password123 |
    And I am logged in as 'antonella@email.com'

  Scenario: Fills in fixed costs form
    Given I am on home page
    When I click 'New Expense'
    Then I should see 'Enter Fixed Expenses'
    When I fill in 'Rent' field with '30000'
    And I fill in 'Insurance' field with '300'
    And I fill in 'Transportation' field with '1000'
    And I fill in 'Education' field with '380'
    And I fill in 'Food' field with '3500'
    And I click 'Submit'
    Then I should see 'Expense saved!'
