Feature: Users features
  Users can create accounts and log in

  Scenario: Users can create an account
    Given Guest visits the landing_path
    And   they click on the 'register' link
    Then  they fill out the new user form
    And   they see the user homepage



