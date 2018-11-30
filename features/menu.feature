Feature: User can see menu
    As a visitor
    In order to get an overview of the restaurants products
    I would like to be able to see a menu

    As a visitor,
    In order to navigate the products
    I would like to see the products sorted in categories

    Background:
        Given the following categories exist
            | category |
            | Main     |
            | Dessert  |
            | Starter  | 

        And the following products exists
            | name            | description                            | price | category|
            | green salad     | fresh lettuce, tomato and cheese       | 50    | Starter |
            | pizza           | cheese, pinapple and ham               | 100   | Main     |
            | ice cream       | strawberry                             | 50    | Dessert  |
        
        And I visit the site

    Scenario: When I enter the site I should see a menu
        Then I see 'green salad'
        And I see 'fresh lettuce, tomato and cheese'
        And I see '50'
        And I see 'Starter'
    
    Scenario: User can navigate the products
        And I click "Login"
        When I fill in 'Email' with 'Don@trump.com'
        And I fill in 'Password' with 'maga2020'
        And I click 'Log in'
        Then I am on landing page
        Then I see "Today's Menu"
        And I see "Starter"
        And I see "Main"
        And I see "Dessert"