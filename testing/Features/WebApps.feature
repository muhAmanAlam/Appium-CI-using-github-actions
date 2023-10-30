Feature: Login and Order from Sauce Demo Website

A short summary of the feature


#@DataSource:testData/sauceDemo.xlsx 
#Scenario: Loggin into Sauce Demo Website
#	Given User Navigates to <url>
#	When User Enters <username> in '//item[@key='sauceDemo_username']'
#	And User Enters <password> in '//sauceDemo/password'
#	Then User Clicks on '//sauceDemo/loginBtn'



#@DataSource:testData/ess.xlsx 
#Scenario: Automate ESS
#	Given User Navigates to <loginUrl>
#	When User Enters <username> in Username Field on "sauceDemo_username"
#	Then User Clicks on Login Button on <websiteName>
#	Then User Enters <username> in User ID Field on <websiteName>
#	Then User Clicks on Next Button on <websiteName>
#	Then User Enters <password> in Enter Password Field on <websiteName>
#	Then User Clicks on Next Button on <websiteName>



#@DataSource:testData/practiceWebsite.xlsx
#Scenario: Logging into Practice Auomation Website
#	Given User Navigates to <url>
#	When User Enters <username> in 'practiceWebsite_usernmame'
#	Then User Enters <password> in 'practiceWebsite_password'
#	And User Clicks on 'practiceWebsite_loginBtn'


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

@DataSource:testData/sauceDemo.xlsx 
Scenario: 3. Ordering an item from the Sauce Demo Website
	When User Clicks on 'sauceDemo_addToCartBtn'
	And User Clicks on 'sauceDemo_shoppingCart'
	And User Clicks on 'sauceDemo_checkoutButton'

	#Assertion
	Then 'sauceDemo_continueButton' should be visible

@DataSource:testData/sauceDemo.xlsx 
Scenario: 4. Enter Wrong Details (Negative Test case 2)
	When User Enters <firstName> in 'sauceDemo_firstNameInputField'
	And User Clicks on 'sauceDemo_continueButton'

	#Assertion
	Then 'sauceDemo_errorButton' should be visible

	Then User Clicks on 'sauceDemo_errorButton'

@DataSource:testData/sauceDemo.xlsx 
Scenario: 5. Enter Wrong Details (Negative Test case 3)
	When User Enters <firstName> in 'sauceDemo_firstNameInputField'
	When User Enters <lastName> in 'sauceDemo_LastNameInputField'
	And User Clicks on 'sauceDemo_continueButton'

	#Assertion
	Then 'sauceDemo_errorButton' should be visible

	Then User Clicks on 'sauceDemo_errorButton'

@DataSource:testData/sauceDemo.xlsx 
Scenario: 6. Enter user details and checkout
	When User Enters <firstName> in 'sauceDemo_firstNameInputField'
	And User Enters <lastName> in 'sauceDemo_LastNameInputField'
	And User Enters <postalCode> in 'sauceDemo_postalCodeInputField'
	And User Clicks on 'sauceDemo_continueButton'
	And User Clicks on 'sauceDemo_finishButton'

	#Assertion
	Then 'sauceDemo_thankYouHeader' should be visible
	


