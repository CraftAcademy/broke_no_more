Feature: User can enter monthly income
  As a user
  In order to know how much money I can save
  I should be able to enter my monthly income

  Scenario: User enters their monthly income
  Given he is on home page
  And he sees "Enter Monthly Income" form
  And he fills in "Fill here" with "30000"
  And he clicks "Submit"
  Then he should see "income successfully added"
