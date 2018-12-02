Feature: User can navigate the site
    As a visitor,
    In order to navigate the site
    I would like to use a navbar

    Background:
        Given the following user exists
        | email          | password  | password_confirmation |
        | Don@trump.com  | maga2020  | maga2020              |

    Scenario: User can see navbar
        Given I visit the site
        Then I should see the logo
        And I should see 'Check out'
        And I should see 'Order total:'

    Scenario: User has logged in
        Given I visit the site
        And I click 'Login' 
        Then I fill in 'Email' with 'Don@trump.com'
        And I fill in 'Password' with 'maga2020'
        And I click 'Log in'
        Then I should see 'Log out'



