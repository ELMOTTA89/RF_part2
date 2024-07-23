Feature: User Login

Scenario:Successful login with valid credentials

Given the user is on the login page
When the user enters a valid username and password
And the user clicks the login button
# to homepage
Then the user should be redirected to the Dashboard


Scenario:Unsuccessful login with invalid credentials

Given the user is on the login page
When the user enters a invalid username and password
And the user clicks the login button
Then an error message should be displayed


Scenario:Unsuccessful login with valid username and invalid password

Given the user is on the login page
When the user enters a valid username and invalid password
And the user clicks the login button
Then an error message should be displayed



Scenario:Unsuccessful login with empty credentials

Given the user is on the login page
When the user leaves the username and/or password fields empty
And the user clicks the login button
Then an error message should be displayed indicating the fields are required