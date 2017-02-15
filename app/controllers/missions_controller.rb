class MissionsController < ApplicationController
  before_action :authenticate_user!

  def new
    @mission = Project.find(params[:project_id]).missions.build
  end

  def create
  end
end
