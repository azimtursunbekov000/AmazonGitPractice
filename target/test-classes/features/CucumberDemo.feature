@Smoke
Feature: Login functionality
 # here we would write the feature name to be tested
  # We create one feature file per feature(functionality)

@Regression
  Scenario: Verify user can login with valid credentials
    # Given steps are used for precondition
    Given User is logged in to https://www.facebook.com/
    # When Action
    When User enter test@test.com to email field
    # And
    And User should enter Hello1234 in password input field
    And User should click on Log In button
    # Then Validation
    Then User should successfully logged in to the Facebook

  @Regression
    Scenario: Verify user can login with invalid login and valid password
      Given User is logged in to https://www.facebook.com/
      When User enter test@test.com to email field
      And  User should enter Hello312 in password input field
      And User should click on Log In button
      Then User should  be not able to login to Facebook.com
  @Regression
     Scenario: Verify user is not able to login with invalid email and valid
        Given User is logged in to https://www.facebook.com/
        When User enter test@test.com to email field
        And  User should enter Hello319 in password input field
        And User should click on Log In button
        Then User should  be not able to login to Facebook