Feature: Be able to enter monthly leisure costs
  As a user
  In order to know what my leisure cost total is
  I should be able to enter all the fields

  Background:
    Given following user exist
      | email                 | password |
      | antonella@email.com   | password123 |
    And "antonella@email.com" is logged in

  Scenario: Fills in leisure costs form
    Given I am on home page
    When I click 'New Expense'
    Then I should see 'And now your leisure expenses:'
    And I fill in 'Leisure activities' field with '30000'
    And I fill in 'Cultural activities' field with '300'
    And I fill in 'Holidays' field with '1000'
    And I fill in 'Sport' field with '380'
    And I fill in 'Eating out' field with '3500'
    And I fill in 'Beauty' field with '2000'
    And I fill in 'Various' field with '2000'
    And I click 'Submit'
    Then I should see 'Expense saved!'
