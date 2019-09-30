require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

@browser = ENV["BROWSER"]
Capybara.configure do |config|
    case @browser
    when "chrome"
        @driver = :selenium_chrome
    when "chromeheadless"
        @driver = :selenium_chrome_headless
    when "firefox"
        @driver = :selenium
    when "firefoxheadless"
        @driver = :selenium_headless
    end
    config.default_driver = @driver
    config.app_host = 'https://enjoeat-sp4.herokuapp.com'
    config.default_max_wait_time = 5
end