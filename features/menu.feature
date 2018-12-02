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

        And the following user exists
            | email          | password  | password_confirmation |
            | Don@trump.com  | maga2020  | maga2020              |
        
        And I visit the site

    Scenario: When I enter the site I should see a menu
        Then I should see 'green salad'
        And I should see 'fresh lettuce, tomato and cheese'
        And I should see '50'
        And I should see 'Starter'
    
    Scenario: User can navigate the products
        When I have logged in
        Then I should see "Today's Menu"
        And I should see "Starter"
        And I should see "Main"
        And I should see "Dessert"