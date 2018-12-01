Feature: Admin Log in 

    As a restaurant owner,
    In order to be able to keep the information about my restaurant up to date
    I would like to be able to log in to the system as a restaurant owner

    Background: Owner exists already
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
            | email              | password  | password_confirmation | owner |
            | odin@norsegod.com  | oneeye111 | oneeye111             | true  |
        
        And I visit login page

    Scenario: Owner can log in to the system
        When owner has logged in
        Then I see "Welcome owner!"