@area
Feature: User is able to convert area units

  Background:
    Given I click on Got it button
    And I land on Area screen

   # Scenario: User is able to dismiss help
   # Given I land on "Help" popup
   # When I click on Got it button
   # Then I land on "Area" screen

    @swap
    Scenario: User is able to swap values
      Given I see "Sq Kilometre" in From header
      And I see "Sq Metre" in To header
      When I click on Swap button
      Then I see "Sq Metre" in From header
      And I see "Sq Kilometre" in To header

  @wip
  Scenario Outline: User is able to convert defaul units
        Given I click on Clear button
        When I enter "<target>" to From field
        Then I get "<result>" in To field
        Examples:
          |target   |result|
          |1        |1000000|
          |2        |2000000|
          |3        |3000000|


        Scenario: User is able to use soft keyboard to enter values
          Given I click on Clear button
          When I click on From field
          And I press "12" on soft keyboard
          Then I get "12000000" in To field


        Scenario:
          When I select "Hectare" from left column
          Then I see "Hectare" in From header
          And I get "10000" in To field


  @hw
  Scenario Outline: User is able to convert itself units v.1.0
    Given I click on Clear button
    And I select "Sq Mile" from left column
    And I select "<to>" from right column
    Then I enter "3" to From field
    And I get "<result>" in To field

    Examples:
      |result          |to           |
      |7.77            |Sq Kilometre |
      |7769964.331     |Sq Metre     |
      |77699643310.08  |Sq Centimetre|

  @hw
  Scenario Outline: User is able to convert itself units v.1.1
        Given I click on Clear button
        And I select "<from>" from left column
        And I select "<to>" from right column
        Then I enter "<target>" to From field
        And I get "<result>" in To field

        Examples:
          |target   |result    | from         |to           |
          |1        |0.155     |Sq Centimetre |Sq Inch      |
          |3        |2787.0912 |Sq Foot       |Sq Centimetre|
          |8        |5120      |Sq Mile       |Acre         |

