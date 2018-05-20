Feature:

Background:
* url 'http://localhost:8080'

Scenario: Greeting a user by name

Given path 'greeting'
  And param name = 'test'
  When method get
  Then status 200
  Then match response == {"id": #number,"content":"Hello, test!"}

Scenario: Greeting a user by default name

  Given path 'greeting'
  When method get
  Then status 200
  Then match response == {"id": #number,"content":"Hello, World!"}

