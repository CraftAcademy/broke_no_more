Feature: User can sign up
  As a application owner
  So visitors can create an account
  There should be a sign-up form on my site

  Scenario: Creates and account
    Given I visit the site
    When I click "Register"
    And I fill "Email" with "antonella@email.com"
    And I fill "Password" with "password123"
    And I fill "Password confirmation" with "password123"
    And I click "Sign up"
    Then I should see message "Welcome! You have signed up successfully."

   Scenario: User leave email field blank!
    Given I visit the site
    When I click "Register"
    And I fill "Email" with ""
    And I click "Sign up"
    Then I should see message "Email can't be blank"

   Scenario: User write wrong password
    Given I visit the site
    And I click "Register"
    And I fill "Password" with "123"
    And I click "Sign up"
    Then I should see message "Password is too short (minimum is 6 characters)"
