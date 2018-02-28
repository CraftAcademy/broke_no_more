Feature: Be able to enter monthly fixed costs
As a user
In order to know what my fixed cost total is
I should be able to enter all the fields

Scenario: Fills in fixed costs form
  Given I am on home page
  Then I should see "Fixed Cost" form
  And I fill in 'Rent' field with '30000'
  And I fill in 'Insurance' field with '300'
  And I fill in 'Transportation' field with '1000'
  And I fill in 'Education' field with '380'
  And I fill in 'Food' field with '3500'
  And I fill in 'Other' field with '2000'
  Then I click "Submit" button
  And I should see "Total fixed costs"  
