Feature: Log in Google email

    Scenario Outline: Test function log in 
        Given a Google webmail
        When I enter <username> and <password>
        And click on Sign in button
        Then I recieve a <message>

        Example:
        |username         |password        | message                       |  
        |                 |                |Your email or password is wrong|
        |linh@gmail.com   |                |Your email or password is wrong|
        |                 |12345Linh       |Your email or password is wrong|
        |linh@gmail.com   |!@#$5555782???>>|Your email or password is wrong|
        |?1<.@gmail.com   |12345Linh       |Your email or password is wrong|
        |linh@gmail.com   |12345Linh       |You logged in successfully     |

    Background: 
        Given a Google email "linh@gmail.com"
        And a new password "BachDuong04"
        And a link "Reset password?" for reset password

    Scenario: Test function reset password
        Given a Google webmail
        When I enter username "linh@gmail.com "to log in
        But I forgot my old password
        And I click on reset password link "Reset password?"
        Then I enter new password "BachDuong04"
        Then I receive a message "You changed your password successfully"
        
