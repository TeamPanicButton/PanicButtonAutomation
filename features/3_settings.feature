@settings
Feature: Facade and Settings page

  Scenario: Activate the App
    Given I wait upto 10 seconds for the "WizardActivity" screen to appear
    And I press "Start"
    And I enter text "abcd EF1" into field with id "create_password_edittext"
    And I press "Save"
    And I enter "123456789" into contact field 0
    And I press "Save"
    And I press "Next"
    And I press "Next"
    And I press "Next"
    And I press "Finish & activate disguise"
    And I long press "="
    Then I enter text "abcd EF1" into field with id "password_edit_text"
    Then I press "Enter"
    Then I see the text "Send emergency alert"
    Then I see the text "Alert is in standby"
    Then I see the text "SMS settings"
    Then I see the text "Twitter settings"

  Scenario: Verify that Activate alert button is active
    Given I long press "="
    And I enter text "abcd EF1" into field with id "password_edit_text"
    Then I press "Enter"
    Then I see the text "Send emergency alert"
    Then I verify "activate_alert" button is "enabled"

  Scenario: Verify that SMSSettingsActivity is opened on SMS click
    Given I long press "="
    And I enter text "abcd EF1" into field with id "password_edit_text"
    And I press "Enter"
    And I press "SMS settings"
    Then I wait upto 10 seconds for the "SMSSettingsActivity" screen to appear

  Scenario: Verify that TwitterSettingsActivity is opened on Twitter click
    Given I long press "="
    And I enter text "abcd EF1" into field with id "password_edit_text"
    And I press "Enter"
    And I press "Twitter Settings"
    Then I wait upto 10 seconds for the "TwitterSettingsActivity" screen to appear

  Scenario: Verify the back button takes user to Facade
    Given I long press "="
    When I press view with id "login_back_button"
    Then I wait upto 10 seconds for the "CalculatorActivity" screen to appear


