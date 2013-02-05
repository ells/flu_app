Feature: Submit Symptom Set
  In order to submit a symptom set
  As a registered user
  I want to select symptoms and durations
  
Scenario: Symptom Submission
    Given I have symptoms called Cough, Fever for durations 2, 1
    When I go to the new symptom set page
    Then I should select "Cough"
    And I should select "Fever"
    And I should select "2"
    And I should select "1"
