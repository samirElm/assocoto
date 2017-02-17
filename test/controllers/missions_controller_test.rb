require 'test_helper'

class MissionsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    sign_in users(:one)
    @mission = missions(:one)
  end

  test "logged in should get show" do
    get project_mission_url(@mission.project, @mission)
    assert_response :success
  end

  test "logged in should get new" do
    project = projects(:one)

    get new_project_mission_url(project)
    assert_response :success
  end
end
