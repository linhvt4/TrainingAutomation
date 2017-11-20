Feature: Log in Google email

  Scenario: Test fuction log in Google email successfully
    Given An account of google email
    And a valid password email
    When I enter username and password to webmail 
    Then I log in successfully 
    And redirect to email homepage

  Scenario: Test function log in Google email unsuccessfully
    Given An account of google email
    And a invalid password
    When I enter username and password to webmail
    Then I recieve a error message "Your username or password wrong"

  Scenario: Test function log in Google email unsuccessfully
    Given An account is not google email
    And a password includes special characters, numbers and words
    When I enter username and password to webmail
    Then I receive a error message "Your username or password wrong"

  Scenario: Test function forward password successfully
    Given An account of google email
    And I forgot password
    When I enter username into pop-up
    And click on "Forgot password?" link
    Then navigate me to reset password pop-up
    And I enter new password into reset password pop-up
    And click submit button
    Then I changed new password successfully
