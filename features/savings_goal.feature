Feature: Add a savings goal for the user to meet
  As a user
  In order to know how long it would take to save money
  I should be able to enter my savings goal


  Scenario: User enters their savings goal
    Given he is on home page
    When he clicks "Savings Goal"
    And he should see "Enter Savings Goal"
    And he fills in "Fill here" with "4000000"
    And he clicks "Submit"
    Then he should see "Savings Goal saved"
