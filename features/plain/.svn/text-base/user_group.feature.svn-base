Feature: Usergroups

  In order to divide users into groups
  As an admin
  I want to administrate the usergroups
  
  Scenario: See all usergroups
    Given a logged in user
    When I go to the users page
    Then I should see "Usergroups"
    And I should see "Add usergroup"
  
  Scenario: Access new usergroup page
    Given a logged in user
    When I go to the new usergroup page
    Then I should see "Add usergroup"
    And I should see "Name"
    And I should see "Permissions"