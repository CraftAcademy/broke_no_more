Feature: User can enter monthly income
  As a user
  In order to know how much money I can save
  I should be able to enter my monthly income

  Scenario: User enters their monthly income
  Given he is on home page
  When he clicks "New Income"
  And he should see "Enter Monthly Income" 
  And he fills in "Fill here" with "30000"
  And he clicks "Submit"
  Then he should see "Income successfully added"
