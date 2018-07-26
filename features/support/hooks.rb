require_relative 'helper.rb'

## Helpers Definitions
World(Helper)

After do |scenario|
  ## take screenshot
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
  if scenario.failed?
    take_screenshot(scenario_name.downcase!, 'failed')
  else
    take_screenshot(scenario_name.downcase!, 'passed')
  end
  ## kills instance when not headless
  unless BROWSER.eql?('poltergeist')
    Capybara.current_session.driver.quit
  end
end

# Screenshots
def take_screenshot(file_name, result)
  timer_path = Time.now.strftime('%Y_%m_%d').to_s
  file_path = "reports/screenshots/test_#{result}/run_#{timer_path}/"
  file_name_normalized = file_name.gsub(/[^0-9A-Za-z]/, '') + ".png"
  screenshot = file_path + file_name_normalized
  #screenshot.gsub! ',', ''
  #puts screenshot
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Clique aqui para ver a evidência')
end
