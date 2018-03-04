Feature: User login
  As a user
  In order to access my account
  I want to be able to login

  Background:
    Given following user exist
      | email                 | password |
      | antonella@email.com   | password123 |

  Scenario: User successfully logs in
    Given I visit the site
    And I click "Login"
    When I fill in "Email" with "antonella@email.com"
    And I fill in "Password" with "password123"
    And I click "Log in"
    Then I should see "Signed in successfully."

  Scenario: User inserts wrong email address
    Given I visit the site
    And I click "Login"
    When I fill in "Email" with "antonellaemail.com"
    And I fill in "Password" with "password123"
    And I click "Log in"
    Then I should see "Invalid Email or password."

  Scenario: User inserts wrong password
    Given I visit the site
    And I click "Login"
    When I fill in "Email" with "antonella@email.com"
    And I fill in "Password" with "123"
    And I click "Log in"
    Then I should see "Invalid Email or password."
