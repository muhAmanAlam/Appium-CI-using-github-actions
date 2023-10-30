Feature: mix

A short summary of the feature

@DataSource:testData/postEcho.xlsx 
Scenario: Testing Postman Echo Get
	When I set url to '<baseUrl>' 
	And I set endpoint to '<endPoint>'
	And Add '<h_param_1_key>' to '<h_param_1_value>' in request header
	And Add parameter '<r_param_1_key>' with value '<r_param_2_value>' to request
	And I execute a 'GET' request
	Then I get a '<respCode>' response code

@DataSource:testData/sauceDemo.xlsx 
Scenario: 1. Logging in without password (Negative Test Case 1)
	Given User Navigates to <url>
	When User Enters <username> in 'sauceDemo_usernname'
	And User Clicks on 'sauceDemo_loginBtn'
	Then 'sauceDemo_loginError' should be visible
	Then User Clicks on 'sauceDemo_loginErrorBtn'


@DataSource:testData/sauceDemo.xlsx 
Scenario: 2. Logging into Sauce Demo Website
	When User Enters <username> in 'sauceDemo_usernname'
	Then User Enters <password> in 'sauceDemo_password'
	And User Clicks on 'sauceDemo_loginBtn'
	Then 'sauceDemo_appLogo' should be visible
