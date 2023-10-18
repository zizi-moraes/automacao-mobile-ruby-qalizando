Feature: Product Registration
  As a user 
  I should be able to 
  Manager market inventory

Scenario: Register a product 
  Given that an employee registers a product in inventory
  When he enters valid product information 
  Then the product will be registred successfuly

Scenario: Edit a product 
  Given there is already a registered product
  When employee edits product information 
  Then the product will be edited successfuly

Scenario: Delete a product 
  Given there is a registered product
  When employee delete this product information 
  Then the product will be deleted successfuly
@test
Scenario Outline: Decrease product amount
  Given have a product amount in inventory
  When employee decrease this product amount "<amount>"
  Then product amount will be decreased "<newValue>" successfuly

Examples:
  | amount | newValue |
  |   3    |    2.0   | 
  |   2    |    3.0   | 
  |   5    |    0.0   | 
  