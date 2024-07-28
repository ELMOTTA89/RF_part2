Feature:  Add user 

Scenario:Successful access to Add user page
Given the admin is logged in url orange
When the admin click on Admin icon
Then the Admin should be redirected to the user management page

Scenario: successful add user
Given the admin  on user management page
When the admin click on add button
Then the admin shoud be redirected to create add user page


Scenario:Successful creating new user 

Given the admin is on the create new user page
When  the admin selects user role 
And   the admin selects status
And   the admin enters Employee name exists
And   the admin enters username doesn't exist 
And   the admin enters password
And   the admin confirm password
And   the user clicks the save button
Then  an error message should be displayed indicating ...