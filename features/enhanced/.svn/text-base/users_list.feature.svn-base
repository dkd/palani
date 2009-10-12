Feature: List Users

  In order to administrate the users
  As a administrator
  I want to see a list of all users
  
  @rendering
  Scenario: Show all users
    Given a logged in user with administrator rights
    When I go to the administration page
    And I wait until the page gets loaded
    Then I should see the rendered table containing all users