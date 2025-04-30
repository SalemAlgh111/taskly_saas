Feature: Task Management
  Scenario: User adds a new task
    Given I am on the new task page
    When I fill in "Title" with "Test Task" and "Description" with "Test Description"
    And I press "Create Task"
    Then I should see "Task was successfully created."