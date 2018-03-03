Feature: User can log in using Facebook
  As a user
  In order to simplify the login process to the site
  I would like to login with my Facebook account

  Scenario: Visitor clicks on 'Login with Facebook' and creates an account
    Given I visit the site
    And I click 'Login with Facebook'
    Then I should be redirected to the home page
    And I should see 'Successfully authenticated from Facebook account'
    And my account should state that I signed up with Facebook
