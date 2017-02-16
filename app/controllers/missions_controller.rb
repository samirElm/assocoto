class MissionsController < ApplicationController
  before_action :authenticate_user!

  def show
    @mission = load_mission
  end

  def new
    @mission = load_project.missions.build
  end

  def create
    @mission = load_project.missions.build(missions_params)

    if @mission.save
      flash[:notice] = "La mission a bien été créée"

      redirect_to department_url(@mission.project.department)
    else
      flash[:error] = "Une erreur est survenue"

      redirect_to :new
    end
  end

  private

  def missions_params
    params.require(:mission).permit(:title, :description, :deadline)
  end

  def load_mission
    Mission.find(params[:id])
  end

  def load_project
    Project.find(params[:project_id])
  end
end
