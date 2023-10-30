Feature: Testinng the Postman-Echo API

A short summary of the feature

@DataSource:testData/postEcho.xlsx 
Scenario: Testing Postman Echo Get
	When I set url to '<baseUrl>' 
	And I set endpoint to '<endPoint>'
	And Add '<h_param_1_key>' to '<h_param_1_value>' in request header
	And Add parameter '<r_param_1_key>' with value '<r_param_2_value>' to request
	And I execute a 'GET' request
	Then I get a '<respCode>' response code
	

@DataSource:testData/postEcho2.xlsx 
Scenario: Testing Postman Echo Post
	When I set url to '<baseUrl>' 
	And I set endpoint to '<endPoint>'
	And Add '<h_param_1_key>' to '<h_param_1_value>' in request header
	And Add json request body '<requestBody>' to request
	And I execute a 'POST' request
	Then I get a '<respCode>' response code
