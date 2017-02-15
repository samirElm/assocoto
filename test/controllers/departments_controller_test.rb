require 'test_helper'

class DepartmentsControllerTest < ActionDispatch::IntegrationTest
  # include Devise::Test::ControllerHelpers
  include Devise::Test::IntegrationHelpers

  test "logged in should get index" do
    sign_in users(:one)
    get departments_url
    assert_response :success
  end

  test "not authenticated should get redirect" do
    get departments_url
    assert_response :redirect
  end
end
