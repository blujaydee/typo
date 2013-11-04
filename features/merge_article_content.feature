Feature: Merge Articles
  As a blog administrator
  I want to merge similar articles
  So that I can organize my blog

  Background:
    Given the blog is set up
    And the following articles exist:
    | title     | author     | body | id | published |
    | Hello     | author24   |  hi  |  1 |    t      |
    | World     | author25   |  bye |  2 |    t      |

    And I am logged into the admin panel
    And I follow "All Articles"
    And I follow "Hello"
    And I fill in "merge_with" with "2"
    And I press "Merge"

  Scenario: The merged article should contain the text of both.
    Given I am on the new article page
    When I follow "All Articles"
    When I follow "Hello"
    Then I should see "hi"
