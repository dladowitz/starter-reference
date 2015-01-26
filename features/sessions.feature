Feature: Sessions features
  Users can login and logout

  Scenario: User can login and logout
#   Need to add user to database instead of creating in each scenario
    Then  they visit the new user page
    Then  they fill out the new user form

    Given Guest visits the landing_path
    And   they click on the signin link
    And   they fill out the signin form
    Then  they are logged into the site
    Then  they click the logout link
    Then  they are logged out of the site

