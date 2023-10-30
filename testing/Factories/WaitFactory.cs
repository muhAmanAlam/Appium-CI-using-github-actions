using OpenQA.Selenium.Support.UI;
using OpenQA.Selenium;
using SeleniumExtras.WaitHelpers;
using System;


namespace testing.Factories
{
    public class WaitFactory
    {
        private IWebDriver driver;
        private int timeOutInMilliSecondsinint;


        public WaitFactory(IWebDriver driver)
        {
            this.driver = driver;
            LoadTimeOutFromProperties();
        }

        private void LoadTimeOutFromProperties()
        {
            
            timeOutInMilliSecondsinint = 400;
           
        }

        public void WaitForElementToBeClickable(string locatorValue)
        {
            Console.WriteLine("this is wait factory locator value" + locatorValue);
            WebDriverWait wait = new WebDriverWait(driver, TimeSpan.FromMilliseconds(timeOutInMilliSecondsinint));
            wait.Until(ExpectedConditions.ElementToBeClickable(By.XPath(locatorValue)));
        }
    }
}
