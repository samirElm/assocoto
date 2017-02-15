require 'test_helper'

class DepartmentsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "logged in should get index" do
    sign_in users(:one)
    get departments_url
    assert_response :success
  end

  test "not authenticated should get redirect on index" do
    get departments_url
    assert_response :redirect
  end

  test "logged in should get show" do
    sign_in users(:one)
    department = departments(:one)
    get department_url(department)
    assert_response :success
  end

  test "not authenticated should get redirect on show" do
    department = departments(:one)
    get department_url(department)
    assert_response :redirect
  end
end
