Feature: Log in Google email
    Background: 
        Given a Chrome browser
        When I open browser 
        And access to Google webmail
        Then Iam be asked to enter username and password
    
    Scenario Outline: Test function enter username 
        Given an created account
        And I see <label1>
        And <label2>
        And <label3>
        And <link1>
        And <link2>
        When I enter <username>
        And I click on Next button 
        Then I receive a <message>
            
        Examples:
        | username        |  message                            | label1 |   label2                     |  label3        | link1         | link2        |
        |                 | Enter an email or phone number      | Google | Sign in to continue to gmail | Email or phone | Forgot email? | More options | 
        |12@#$56544       | Enter a valid email or phone number | Google | Sign in to continue to gmail | Email or phone | Forgot email? | More options |
        |linh@gmail.com   |                                     | Google | Sign in to continue to gmail | Email or phone | Forgot email? | More options |

    Scenario Outline: Test function enter password
        Given I enter linh@gmail.com into username successful 
        And I see <label1>
        And <label2>
        And <label3>
        And <dropdownlist> email
        And <link>
        When I enter a <password>
        And click Next button
        Then I recieve a <message>
        And I see an email

        Examples: 
        | password                    | message                                                        | label1 | label2 | label3              | dropdownlist   | link            |
        |                             | Enter a password                                               | Google | Hi     | Enter your password | linh@gmail.com | Forgot password? |
        | 1@$%%^&*^&*(&*(&))asfgkjlk  | Wrong password. Try again or click Forgot password to reset it | Google | Hi     | Enter your password | linh@gmail.com | Forgot password? |
        | BachDuong05                 |                                                                | Google | Hi     | Enter your password | linh@gmail.com | Forgot password? |

    Scenario: Test function display email on homepage
        Given I logged in gmail successful
        When I navigate to email homepage
        Then I see my email 
        And menubar 

