Feature: Sign in Google email

    Backgroud:
        Given a Google email account 
        And username is linh@gmail.com
        And password is BachDuong10
        And Fullname of account holder is Vu Thuy Linh
        And phone number to verify account is 0975995774
        And email to verify account is vulinh@gmail.com
        When I access to link http://mail.google.com/
        Then I see a pop-up

    Scenario Outline: Test function enter username into pop-up
        Given an created account
        And I see <label1>
        And <label2>
        And <label3>
        And <link1>
        And <link2>
        And <button>
        When I enter <username>
        And I click on Next button 
        Then I receive a <message>
            
        Examples:
        | username        |  message                            | label1 |   label2                     |  label3        | link1         | link2        | button |
        |                 | Enter an email or phone number      | Google | Sign in to continue to gmail | Email or phone | Forgot email? | More options | Next   |
        |12@#$56544       | Enter a valid email or phone number | Google | Sign in to continue to gmail | Email or phone | Forgot email? | More options | Next   |
        |linh@gmail.com   |                                     | Google | Sign in to continue to gmail | Email or phone | Forgot email? | More options | Next   |

    Scenario Outline: Test function enter password into pop-up
        Given I enter linh@gmail.com into username successful 
        And I see <label1>
        And <label2>
        And <label3>
        And <dropdownlist> email
        And <link1>
        And <button>
        When I enter a <password>
        And click Next button
        Then I recieve a <message>
        And I navigate to <link2>

        Examples: 
        | password                    | message                                                        | label1 | label2  | label3              | dropdownlist   | link1            | link2                                         | button |      
        |                             | Enter a password                                               | Google | Hi Linh | Enter your password | linh@gmail.com | Forgot password? |                                               | Next   |
        | 1@$%%^&*^&*(&*(&))asfgkjlk  | Wrong password. Try again or click Forgot password to reset it | Google | Hi Linh | Enter your password | linh@gmail.com | Forgot password? |                                               | Next   | 
        | BachDuong05                 |                                                                | Google | Hi Linh | Enter your password | linh@gmail.com | Forgot password? | https://mail.google.com/mail/u/0/?hl=vi#inbox | Next   |

    Scenario: Test function re-send email by phone number
        Given I forgot my email
        When I click on "Forgot email?" link on pop-up
        Then I see <label1>
        And <label2>
        And <label3>
        And <label4>
        And <button>
        When I enter my <phone number>
        And click on Next button
        Then I recieve a <message>

        Examples:
        | phone number | message                             | label1 | label2          | label3                                    | label4                      | button |  
        |              | Enter a valid email or phone number | Google | Find your email | Enter your phone number or recovery email | Enter phone number or email | Next   |
        |0975995774    |                                     | Google | Find your email | Enter your phone number or recovery email | Enter phone number or email | Next   |                            
        
        
