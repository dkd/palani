Feature: Users
  In order to administrate the users
  As an admin
  I want to see them
  
  Scenario: Administrate users
    Given a logged in admin
    When I go to the users page
    Then I should see the users grid
    And I should see the dashboard
    And I should see usergroups
  
  @valid
  Scenario: Add valid user
    Given a logged in admin
    When I go to the new user page
    And I fill valid user data in
    Then I should get redirected to the users page
    And I should see a notice flash
  
  @invalid
  Scenario: Add invalid user
    Given a logged in admin
    When I go to the new user page
    And I fill invalid user data in
    Then I should get redirected to the new user page
    And I should see an error flash
  
  Scenario: Edit user
    Given a logged in admin
    When I go the users page
    And I click on the edit button of an user
    Then I should get redirected to the edit user page
  
  @valid
  Scenario: Edit valid user
    Given a logged in admin
    When I go the users page
    And I click on the edit button of an user
    And I edit the user with valid data
    Then I should get redirected to the users page
    And I should see a notice flash
  
  @invalid
  Scenario: Edit invalid user
    Given a logged in admin
    When I go the users page
    And I click on the edit button of an user
    And I edit the user with invalid data
    Then I should get redirected to the edit user page
    And I should see an error flash
    
  Scenario: Delete user
    Given a logged in admin
    When I go the users page
    And I click on the delete button of an user
    Then the deleted user should disappear