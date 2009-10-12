Feature: Pages

  In order to administrate each page and content element
  As a user
  I want to see all features
  
  Scenario: See the Pages
    Given a logged in user
    When I go to the homepage
    Then I should see "Notices"
    And I should see "Tags"