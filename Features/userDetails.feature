@ignore
Feature: user details

Scenario: Get Call

Given url 'https://reqres.in/api/users?page=2'
When method GET
Then status 200