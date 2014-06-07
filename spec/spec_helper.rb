# Loadpath for . and lib/
$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

# Default env here should be test
ENV["RACK_ENV"] ||= 'test'

# Loadup environment file
require File.expand_path("../../config/environment", __FILE__)

# rspec helper requires
# require 'spec_mocks'
# require 'sucker_punch/testing/inline'

# Keeping this code around for whenever you need helper functions for rspec (e.g. mock objects)
# $LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'support'))
# Dir["#{File.dirname(__FILE__)}/support/*.rb"].each do |file|
#   require file
# end

# Don't enforce locales
I18n.enforce_available_locales = false

# Rspec config
RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.mock_with :rspec
  config.expect_with :rspec
end
