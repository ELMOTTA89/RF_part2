Scenario:Unsuccessful create user with empty fields

Given the admin is on the create new user page
When the admin leaves 1 or more fields empty
And the user clicks the save button
Then an error message should be displayed indicating the fields are required


Scenario:Unsuccessful create user with username already exists

Given the admin is on the create new user page
When the admin enters username already exists 
And the user clicks the save button
Then an error message should be displayed indicating the username already exists


Scenario:unSuccessful creating new user with Employee name doesn't exist

Given the admin is on the create new user page
When the admin lselects user role 
*   the admin selects status
*   the admin enters Employee name dosen't exists
*   the admin enters username
*   the admin enters password
*   the admin confirm password
And the user clicks the save button
Then an error message should be displayed indicating invalid Employee name


Scenario:Successful creating new user

Given the admin is on the create new user page
When the admin lselects user role 
*   the admin selects status
*   the admin enters Employee name exists
*   the admin enters username
*   the admin enters password
*   the admin confirm password
And the user clicks the save button
Then an error message should be displayed indicating the fields are required