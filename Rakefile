require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'pry'


validacao_report = 'report_html'
#default ou report_html ou report_json ou rerun_log
$cucumber_registro = YAML.load_file('./features/support/config/cucumber.yml')[validacao_report]


task :cenario_test do  
    puts 'Running scenarios upload'
    sh "cucumber -t @cenario_test -f rerun --out rerun.txt #{$cucumber_registro}cenario_test_report.html BROWSER=chrome" 
end
