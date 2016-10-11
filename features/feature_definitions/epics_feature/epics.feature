@api_test
Feature: Epic Smoke Tests

  @smoke
  Scenario: Epic create
    Given I have set a connection to pivotal_tracker API service
    And I want to create an epic with the name ATTestingEpic
    When Sending a POST request to epics endpoint with project id 1891663
    Then I expect Status code 200 for the SmokeTest
    And I expect name of epic will be ATTestingEpic