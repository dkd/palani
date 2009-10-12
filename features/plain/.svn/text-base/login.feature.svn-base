Feature: Login

  In order to see the admin interface
  As a user
  I want to get logged in
  
  @valid
  Scenario: Log into the admin interface with valid user
    Given a valid user
    When I put his username and correct password into the form
    Then I should get redirected to the welcome page

  @invalid
  Scenario: Log into the admin interface with invalid user 
    Given a invalid user
    When I put his username and incorrect password into the form
    Then I should get redirected to the login page
    And I should see "Username"
    And I should see "Password"
    
  Scenario: Logout
    Given a valid user
    And the user is logged in
    When I go to the homepage
    And I click "Logout"
    Then I should get redirected to the login page