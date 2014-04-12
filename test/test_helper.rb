ENV["RAILS_ENV"] ||= "test"

require 'simplecov'
SimpleCov.start 'rails'

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
  fixtures :all
end
