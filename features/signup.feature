Feature: User can sign up
  As a application owner
  So visitors can create an account
  There should be a sign-up form on my site

  Scenario: Creates and account
    Given User visits the site
    Then User clicks on "Sign up" button
    And I fill "Email" with "antonella@email.com"
    And I fill "Password" with "password123"
    And I fill "Password confirmation" with "password123"
    And I click on "Sign up"
    And I should see message "Welcome! You have signed up successfully."

   Scenario: User leave email field blank!
     Given User visits the site
     And User clicks on "Sign up" button
     When I fill "Email" with ""
     And I click on "Sign up"
     Then I should see message "Email can't be blank"

   # Scenario: User did not enter both password fields
   #   Given User visits the site
   #   When User clicks on the "Sign up" button
   #   And He fills in "name" with "Holger"
   #   And He fills in "password_confirmation" with "password1"
   #   And He clicks "submit"
   #   And He sees message "Unsuccessful"
   #
   #
   #    Password is too short (minimum is 8 characters)
