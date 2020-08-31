@UIAutomation
Feature: Github Login

Background:
 * url='https://github.com/login'

Scenario Outline: Github login using invalid credentials <Username> and <Password>
* def username = '<Username>'
* def password = '<Password>'
    Given driver url
    And waitForUrl('https://github.com/login')
    And input('#login_field', username)
    And input('#password', password)
    When submit().click("input[name=commit]")
    Then match html('#js-flash-container') contains 'Incorrect username or password.'
    And print "User has entered incorrect username or password."
    Examples:
    | Username | Password |
    | dummy | world |

