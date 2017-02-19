require 'test_helper'

class MilestonesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    sign_in users(:one)
    @mission = missions(:one)
  end

  test "logged in should get new" do
    get new_project_mission_milestone_url(@mission.project, @mission)
    assert_response :success
  end
end
