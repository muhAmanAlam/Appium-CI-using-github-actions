using OpenQA.Selenium;
using System;
using testing.Factories;


namespace testing.Helpers
{
    public class Utilities
    {

        public static void NavigateDriver(string url) {
            DriverFactory.driver.Navigate().GoToUrl(url);
        }
        public static void EnterString(string locatorValue, string fieldValue)
        {
            IWebElement element = ElementFactory.GetElement(locatorValue);
            EnterString(element, fieldValue);
        }

        public static void EnterString(IWebElement element, string fieldValue)
        {
            DriverFactory.waitForElement(element, 10);
            element.Clear();
            element.SendKeys(fieldValue);
        }

        public static void ClickElement(string locatorValue)
        {
            IWebElement element = ElementFactory.GetElement(locatorValue);
            ClickElement(element);
        }
        public static void ClickElement(IWebElement element)
        {
            DriverFactory.waitForElement(element, 10);
            try
            {
                element.Click();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            
        }

        public static bool IsElementVisible(string locatorValue)
        {
            try 
            {
                DriverFactory.waitForVisibility(locatorValue, 10);
                return ElementFactory.IsElementVisible(locatorValue);
            }
            catch 
            { 
                return false; 
            }
            
        }

    }
}
