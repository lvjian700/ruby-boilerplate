project_root = File.dirname(__FILE__) + "/.."
$LOAD_PATH << "#{project_root}/app"

require "#{project_root}/app/project_root"
require "#{project_root}/config/logging"

ENV['APP_ENV'] ||= 'development'

Dir["#{App.project_root}/app/**/*.rb"].each { |file| require file }

