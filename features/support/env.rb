require 'rspec'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'yaml'
require 'pry'
require 'faker'
require 'br_documents'
require 'documentos_br'


# require 'capybara/poltergeist'

BROWSER = ENV['BROWSER']
ENVIRONMENT_TYPE = ENV['dev']


## variable which loads the data file according to the environment
# CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT_TYPE}.yaml")
CONFIG = YAML.load_file("./features/support/config/dev.yaml")

## register driver according with browser chosen
Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        'args' => [ "--start-maximized" ]
      }
    )
  )
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette => true)
  elsif BROWSER.eql?('internet_explorer')
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  elsif BROWSER.eql?('safari')
    Capybara::Selenium::Driver.new(app, :browser => :safari)
  elsif BROWSER.eql?('poltergeist')
    options = { js_errors: false, window_size: [1440,3000], screen_size: [1440,3000] }
    Capybara::Poltergeist::Driver.new(app, options)
  end 
end

## Cucumber Definitions
Before do |feature|
  ## configure the chosen browser
  Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = CONFIG['url']
  end

  ## set default max wait and maximize browser
  Capybara.default_max_wait_time = 15
  unless BROWSER.eql?('poltergeist')
    Capybara.current_session.driver.browser.manage.window.maximize
  end

  @home_page = Home.new
  @car_page = Car.new
  @authent_page = Authentication.new
  @create_page  = CreateAccount.new
  @shopping_page = Shopping.new
  @addresses_page = Addresses.new
  @shipping_page = Shipping.new
  @paymente_page =  PaymentPage.new
  @order_summary_page =  OrderSummary.new  

end

