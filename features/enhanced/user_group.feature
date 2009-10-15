Feature: Usergroups

  In order to divide users into groups
  As an admin
  I want to administrate the usergroups
  
  Scenario: Administrate usergroups
    Given a logged in admin
    When I go to the users page
    Then I should see usergroups
  
  @valid
  Scenario: Add valid usergroup
    Given a logged in admin
    When I go to the new user page
    And I fill valid usergroup data in
    Then I should get redirected to the users page
    And I should see the new usergroup
  
  @invalid
  Scenario: Add invalid usergroup
    Given a logged in admin
    When I go to the new user page
    And I fill invalid usergroup data in
    Then I should get redirected to the new usergroup page
    
   Scenario: Edit usergroup
     Given a logged in admin
     When I go the users page
     And I click on the edit button of an usergroup
     Then I should get redirected to the edit usergroup page

    @valid
    Scenario: Edit valid usergroup
      Given a logged in admin
      When I go the users page
      And I click on the edit button of an usergroup
      And I edit the usergroup with valid data
      Then I should get redirected to the users page
      And I should see a notice flash

    @invalid
    Scenario: Edit invalid usergroup
      Given a logged in admin
      When I go the users page
      And I click on the edit button of an usergroup
      And I edit the usergroup with invalid data
      Then I should get redirected to the edit usergroup page
      And I should see an error flash

    Scenario: Delete usergroup
      Given a logged in admin
      When I go the users page
      And I click on the delete button of an usergroup
      Then the deleted usergroup should disappear