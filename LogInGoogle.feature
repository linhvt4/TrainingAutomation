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
        And I should see "Google"
        And I should see "Sign in to continue to gmail"
        And I should see "Email or phone"
        And I should see "Forgot email?" link
        And I should see "More options" link
        When I enter <username>
        And I click on Next button 
        Then I receive a <message>
            
        Examples:
        | username        |  message                            | 
        |                 | Enter an email or phone number      | 
        |12@#$56544       | Enter a valid email or phone number | 
        |linh@gmail.com   |                                     | 

    Scenario Outline: Test function enter password into pop-up
        Given I enter linh@gmail.com into username successful 
        And I should see "Google"
        And I should see "Hi Linh"
        And I should see "Enter your password"
        And I should see dropdown list "linh@gmail.com email"
        And I should see "Forgot password?" link
        When I enter a <password>
        And click Next button
        Then I recieve a <message>
        And I navigate to <link>

        Examples: 
        | password                    | message                                                        |  link                                         |                                         
        |                             | Enter a password                                               |                                                |
        | 1@$%%^&*^&*(&*(&))asfgkjlk  | Wrong password. Try again or click Forgot password to reset it |                                                |
        | BachDuong05                 |                                                                | https://mail.google.com/mail/u/0/?hl=vi#inbox  |

    Scenario: Test function re-send email unsucessful by do not input value into textfield
        When I click on "Forgot email?" link on pop-up
        Then I should see "Google"
        And I should see "Find your email"
        And I should see "Enter your phone number or recovery email"
        And I should see "Enter phone number or email"
        When I do not enter value into textfield  
        And click on Next button
        Then I recieve a "Enter a valid email or phone number" message
    
     Scenario: Test function re-send email unsucessful by input invalid phone number 
        When I click on "Forgot email?" link on pop-up
        Then I should see "Google"
        And I should see "Find your email"
        And I should see "Enter your phone number or recovery email"
        And I should see "Enter phone number or email"
        When I enter "0000000000000" into textfield
        And click on Next button
        Then I recieve a "Enter a valid email or phone number" message
        
    Scenario: Test function re-send email unsucessful by input invalid recovery email
        When I click on "Forgot email?" link on pop-up
        Then I should see "Google"
        And I should see "Find your email"
        And I should see "Enter your phone number or recovery email"
        And I should see "Enter phone number or email"
        When I enter "@!@#5467@gmail.com" into textfield
        And click on Next button
        Then I recieve a "Enter a valid email or phone number" message
     
     Scenario Outline: Check case invalid when input valid phone number
        When I click on "Forgot email?" link on pop-up
        Then I should see "Google"
        And I should see "Find your email"
        And I should see "Enter your phone number or recovery email"
        And I should see "Enter phone number or email"
        When I enter "0975995774" into textfield
        And click on Next button
        Then I navigate to next pop-up 
        And I should see "Google"
        And I should see "What's your name?
        And I should see "Enter the name on your Google Account"
        When I enter <firstname>
        And I enter <lastname>
        And click on Next button
        Then I got a <message>
        
        Examples:
        |
        |
        |

        
        
