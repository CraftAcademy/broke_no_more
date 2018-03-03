Feature: User can enter monthly income
  As a user
  In order to know how much money I can save
  I should be able to enter my monthly income

  Background:
    Given following user exist
    | email                 | password |
    | antonella@email.com   | password123 |
    And I am logged in as 'antonella@email.com'

  Scenario: User enters their monthly income
    Given I am on home page
    When I click 'New Income'
    And I should see 'Enter Monthly Income'
    And I fill in 'Fill here' with '30000'
    And I click 'Submit'
    And I should be redirected to landing page
    Then I should see 'Income successfully added!'
