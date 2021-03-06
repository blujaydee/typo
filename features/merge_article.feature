Feature: Merge Articles
  As a blog administrator
  I want to merge similar articles
  So that I can organize my blog

  Background:
    Given the blog is set up
    And I am logged into the non-admin panel
    And the following articles exist:
    | title     | author     | body | id | published |
    | Hello     | author24   |  hi  |  1 |    t      |
    | World     | author25   |  bye |  2 |    t      |

    
  Scenario: A non-admin cannot merge two articles
    Given I am on the new article page
    Then I should not see "Merge"
