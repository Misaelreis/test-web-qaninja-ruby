require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'https://enjoeat-sp1.herokuapp.com'
end