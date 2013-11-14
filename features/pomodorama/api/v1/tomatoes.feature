Feature: API v1 Tomatoes

  Scenario: List tomatoes in JSON
    Given the following tomatoes exist:
      | _id                       | state     | started_at                | stopped_at                |
      | 52817237e88b7be080000001  | running   | 2013-11-12 11:27:35+00:00 |                           |
      | 52817237e88b7be080000002  | completed | 2013-11-11 10:07:40+00:00 | 2013-11-11 11:07:40+00:00 |
    When I send and accept JSON
    And I send a GET request to "/api/v1/tomatoes"
    Then the response status should be "200"
    And the JSON response should be:
      """
      [
        { "_id": "52817237e88b7be080000001", "state": "running", "started_at": "2013-11-12T11:27:35+00:00", "stopped_at": null },
        { "_id": "52817237e88b7be080000002", "state": "completed", "started_at": "2013-11-11T10:07:40+00:00", "stopped_at": "2013-11-11T11:07:40+00:00" }
      ]
      """

  Scenario: Show tomato in JSON
    Given the following tomato exists:
      | _id                       | state     | started_at                | stopped_at                |
      | 52817237e88b7be080000002  | completed | 2013-11-11 10:07:40+00:00 | 2013-11-11 11:07:40+00:00 |
    When I send and accept JSON
    And I send a GET request to "/api/v1/tomatoes/52817237e88b7be080000002"
    Then the response status should be "200"
    And the JSON response should be:
      """
      { "_id": "52817237e88b7be080000002", "state": "completed", "started_at": "2013-11-11T10:07:40+00:00", "stopped_at": "2013-11-11T11:07:40+00:00" }
      """
