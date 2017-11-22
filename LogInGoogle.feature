Feature: Log in Google email
    Background: 
        Given a Chrome browser
        When I open browser 
        And access to Google webmail
        Then Iam be asked to enter username and password
    
    Scenario Outline: Test function enter username 
        Given a Google webmail
        When I enter <username> 
        And click on Next button 
        Then I receive a <message>
                
        Examples:
        | username        |  message                            |  
        |                 | Enter an email or phone number      |
        |12@#$56544       | Enter a valid email or phone number |
        |linh@gmail.com   |                                     |

    Scenario Outline: Test function enter password
        Given I enter a valid username successful
        When I enter a <password>
        And click Next button
        Then I recieve a <message>
        And I see an email

        Examples: 
        | password                    | message                                                        |
        |                             | Enter a password                                               |
        | 1@$%%^&*^&*(&*(&))asfgkjlk  | Wrong password. Try again or click Forgot password to reset it |
        | BachDuong05                 |                                                                |
