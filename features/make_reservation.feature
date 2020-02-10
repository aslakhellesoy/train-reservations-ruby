Feature: Make reservation

  Scenario: booking rejected
    Given the following train:
      | seats | booked |
      |    10 |      6 |
    When Jane books 2 seats
    Then her booking should be rejected
  
  Scenario: booking accepted
    Given the following train:
      | seats | booked |
      |    10 |      6 |
    When Jane books 1 seat
    Then her booking should be accepted
    