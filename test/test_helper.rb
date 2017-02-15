ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  # def sign_in(user)
  #   post user_session_path \
  #     "user[first_name]" => user.first_name,
  #     "user[email]"      => user.email,
  #     "user[password]"   => user.encrypted_password
  # end
end
