Feature: RSVPing AV events
  As an event creator
  In order to see people planning to attend my event
  I would like to be able to confirm attendence
  
  Background: 
    Given the following users exist
      | first_name | last_name | id | password  | email                  | skill_list         | hangouts_attended_with_more_than_one_participant |
      | Alice      | Jones     | 4  | 12345678  | alicejones@hotmail.com | ruby, rails, rspec |  1                                               |
    And following events exist:
      | name       | description             | category        | creator_id | start_datetime          | duration | repeats | time_zone | project | repeats_weekly_each_days_of_the_week_mask | repeats_every_n_weeks |
      | ClientMtg  | Weekly client meeting   | ClientMeeting   | 4         | 2014/02/03 11:00:00 UTC | 150      | never   | UTC       |         |                                           |                       |

  Scenario: event page should have Attendees section with Attend button
    Given I am on the "ClientMtg" event page
    Then I should see "Attendees"
    And I should see button "Attend"
    
  Scenario: project creator automatically added to attendees list
    Given I am logged in as "Alice"
    When I am creating an event
    And I click "Save"
    Then I should see "Alice Jones is hosting the event"

  Scenario: project creator can mention that they cannot attend
    Given I am logged in as "Alice"
    And I am on the "ClientMtg" event page
    When I click "Cannot Attend"
    Then I should not see "Alice Jones is hosting the event"
