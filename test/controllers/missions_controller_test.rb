require 'test_helper'

class MissionsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "logged in should get new" do
    sign_in users(:one)
    project = projects(:one)

    get new_project_mission_url(project)
    assert_response :success
  end

end
