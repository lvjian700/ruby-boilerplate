require 'logger'

LOG_FILE = STDOUT

LOGGER = Logger.new(LOG_FILE)

LOGGER.formatter = proc do |severity, datetime, progname, msg|
  "#{datetime.iso8601} #{severity} #{progname} #{msg}\n"
end

