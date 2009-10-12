Feature: Navigation

  In order to navigate through the application
  As a user
  I want to see the main navigation
  
  @rendering
  Scenario: See the main navigation
    Given a logged in user
    When I go to the homepage
    Then I should see "Content"
    And I should see "Administration"
    And I should see "Extensions"
    And I should see "Help"
  
  @rendering
  Scenario: See the administration sub navigation
    Given a logged in user
    When I go to the administration page
    Then I should see "Edit settings"
    And I should see "Administrate users"
  
  @rendering
  Scenario: See the help sub navigation
    Given a logged in user
    When I go to the help page
    Then I should see "First steps"
    And I should see "Community"
    And I should see "Frequently asked questions"