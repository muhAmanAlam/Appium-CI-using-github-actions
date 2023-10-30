using NUnit.Framework;
using System;
using TechTalk.SpecFlow;
using testing.Factories;
using testing.Helpers;

namespace testing.StepDefinitions
{
    [Binding]
    public class WebAppStepDefs
    {
        private readonly ScenarioContext _scenarioContext;

        public WebAppStepDefs(ScenarioContext scenarioContext)
        {
            _scenarioContext = scenarioContext;
        }


        [Given("User Navigates to (.*)")]
        public void GivenUserNavigatesToUrl(string url)
        {
            DriverFactory.LauchDriver(debuggingMode: false);
            Utilities.NavigateDriver(url);
        }

        [When("User Enters (.*) in '(.*)'")]
        public static void WhenUserEntersUsernameOnUsernameXpathOnSauceDemoWebsite(string data, string nodeKey)
        {
            string locator = XmlReaderUtility.GetValueUsingNodeKey(nodeKey);
            Utilities.EnterString(locator, data);
        }


        [Then("User Enters (.*) in '(.*)'")]
        public void WhenUserEntersPasswordOnPasswodXpathOnSauceDemoWebsite(string data, string nodeKey)
        {
            string locator = XmlReaderUtility.GetValueUsingNodeKey(nodeKey);
            Utilities.EnterString(locator, data);
        }

       [When("User Clicks on {string}")]
        public void WhenUserClicksOn(string nodeKey)
        {
            string locator = XmlReaderUtility.GetValueUsingNodeKey(nodeKey);
            Utilities.ClickElement(locator);
        }


        [Then("User Clicks on '(.*)'")]
        public void ThenUserClicksOnLoginButtonXpathOnSauceDemoWebsite(string nodeKey)
        {
            string locator = XmlReaderUtility.GetValueUsingNodeKey(nodeKey);
            Utilities.ClickElement(locator);
        }

        [Then("{string} should be visible")]
        public void ThenShouldBeDisplayed(string nodeKey)
        {
            string locator = XmlReaderUtility.GetValueUsingNodeKey(nodeKey);
            Assert.True(Utilities.IsElementVisible(locator));   
        }





    }
}
