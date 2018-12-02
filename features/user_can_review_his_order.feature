@javascript

Feature: Visitor can review his order
    As a visitor, 
    In order to see my full order and a total price
    I would like be able to see a list on an order details page

    Background:
        Given the following categories exist
            | category |
            | main     |

        And the following products exists
            | name  | description | price | category |
            | pizza | good pizza  | 50    | main     |

        And the following user exists
            | email          | password  | password_confirmation |
            | don@trump.com  | maga2020  | maga2020              |

    Scenario: Visitor can view his order on a checkout page
        When I visit the site
        And I click 'Login' 
        Then I fill in 'Email' with 'don@trump.com'
        And I fill in 'Password' with 'maga2020'
        And I click 'Log in'
        Then I should see 'pizza'
        And I click 'Add to Cart'
        And I click 'Check out'
        And I should see 'Order Total: €50'