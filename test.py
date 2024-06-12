import unittest
from appium import webdriver
from appium.webdriver.common.appiumby import AppiumBy

# Import Appium UiAutomator2 driver for Android platforms (AppiumOptions)
from appium.options.android import UiAutomator2Options

capabilities = dict(
    platformName='android',
    appPackage='com.android.settings',
    appActivity='.Settings',
    language='en',
    locale='US'
)

appium_server_url = 'http://localhost:4723'

# Converts capabilities to AppiumOptions instance
capabilities_options = UiAutomator2Options().load_capabilities(capabilities)

class TestAppium(unittest.TestCase):
    def setUp(self) -> None:
        self.driver = webdriver.Remote(command_executor=appium_server_url,options=capabilities_options)

    def tearDown(self) -> None:
        if self.driver:
            self.driver.quit()

    def test_find_battery(self) -> None:
        el = self.driver.find_element(by=AppiumBy.XPATH, value='//*[@text="Battery"]')
        el.click()
        self.driver.get_screenshot_as_file('Screenshots\\battery.png')

    def test_find_network(self) -> None:
        el = self.driver.find_element(by=AppiumBy.XPATH, value='//android.widget.TextView[@resource-id="android:id/title" and @text="Network & internet"]')
        el.click()
        self.driver.get_screenshot_as_file('Screenshots\\network.png')

if __name__ == '__main__':
    unittest.main()
    print('All tests have finished executing')
