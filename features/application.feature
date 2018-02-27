Feature: User visits the home page
As a user
In order to use the app
I should see a home page


Scenario: Display the home page visiting the page
  When I visit the page
  Then I should be on the home page
  And I should see "Welcome to Broke No More"
