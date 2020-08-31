@UIAutomation
Feature: Google Search validation

  Background: 
    * configure driver = { type: 'chrome', showDriverLog: true, httpConfig: { readTimeout: 120000 } }
    * url='https://www.google.co.in'
    
    # * configure driverTarget = { docker: 'justinribeiro/chrome-headless', showDriverLog: true }
    # * configure driverTarget = { docker: 'ptrthomas/karate-chrome', showDriverLog: true }
    # * configure driver = { type: 'chromedriver', showDriverLog: true }
  # * configure driver = { type: 'geckodriver', showDriverLog: true }
  # * configure driver = { type: 'safaridriver', showDriverLog: true }
  # * configure driver = { type: 'iedriver', showDriverLog: true, httpConfig: { readTimeout: 120000 } }
  
  Scenario Outline: Google search using <inputValue> keyword
  * def text = '<inputValue>'
  * def searchURL = '<pageURL>'
    Given driver url
    And waitForUrl('google.co.in')
    And input('input[name=q]', text)
    When click('input[name=btnI]')
    And delay(100)
    And waitForUrl(searchURL)
    And print driver.title
    Then match driver.title == '<searchTitle>'
    And driver.quit()
    Examples:
    | inputValue | searchTitle | pageURL |
    | Karate UI | Karate UI - Karate | https://intuit.github.io/karate/karate-core/ |
    | Karate API | GitHub - intuit/karate: Test Automation Made Simple | https://github.com/intuit/karate |