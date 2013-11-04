Feature: Merge Articles
  As a blog administrator
  I want to merge similar articles
  So that I can organize my blog

  Background:
    Given the blog is set up
    And the following articles exist:
    | title     | author     | body | id |
    | Hello     | author24   |  hi  |  1 |
    | World     | author25   |  bye |  2 |

    And I am logged into the admin panel
    And I follow "All Articles"
    And I follow "Hello"
    And I fill in "merge_with" with "2"
    And I press "Merge"
    Then I should see "Hello"

  Scenario: The merged article should contain the text of both.
    Given I am on the content page
    And I follow "Hello"
    Then I should see "hi"
    And I should see "bye"


  Scenario: The merged article should have one author.
    Given I am on the content page
    Then I should see "author24"
    And I should not see "author25"

  Scenario: The comments on each two article must be carried over

  Scenario: The title of the new article should be from either.
    Given I am on the content page
    Then I should see "Hello"
    And I should not see "World"
