Feature: Pages

  In order to administrate pages
  As a user
  I want to see each page
  
  Scenario: Administrate pages
    Given a logged in admin
    When I go to the pages page
    Then I should see the tree
  
  @valid
  Scenario: Add valid page
    Given a logged in admin
    When I go to the pages page
    And I open the context menu of a node
    And I click "New page"
    And I select a position
    And I fill a valid page in
    Then I get redirected to the page page
    And I should see the new page

  @invalid
  Scenario: Add invalid page
    Given a logged in admin
    When I go to the pages page
    And I open the context menu of a node
    And I click "New page"
    And I select a position
    And I fill an invalid page in
    Then I get redirected to the new page path
    And I should see an error flash
    
  Scenario: Edit page
    Given a logged in admin
    And a valid page
    When I go to the page page
    Then I should see "Administrate page"
    
  @valid
  Scenario: Edit valid page
    Given a logged in admin
    And a valid page
    When I go to the page page
    And I click "Administrate page"
    And I fill valid page data in
    Then I should see a notice flash

  @invalid
  Scenario: Edit invalid page
    Given a logged in admin
    And a valid page
    When I go to the page page
    And I click "Administrate page"
    And I fill invalid page data in
    Then I should see an error flash

  Scenario: Delete page
    Given a logged in admin
    When I open the context menu of a node
    And I click "Delete"
    Then the deleted page should disappear