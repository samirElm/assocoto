class MilestonesController < ApplicationController
  before_action :authenticate_user!

  def new
    @milestone = load_mission.milestones.build
  end

  def create
    milestone = load_mission.milestones.build(milestones_params)

    if milestone.save
      flash[:notice] = "La nouvelle a bien été créée"

      redirect_to project_mission_path(milestone.mission.project, milestone.mission)
    else
      flash[:error] = "Une erreur est survenue"

      redirect_to :new
    end
  end

  # def edit
  #   @mission = load_mission
  # end

  # def update
  #   mission = load_mission

  #   if mission.update(missions_params)
  #     flash[:notice] = "La mission a bien été modifiée"

  #     redirect_to project_mission_path(mission.project, mission)
  #   else
  #     flash[:error] = "Une erreur est survenue"

  #     redirect_to :edit
  #   end
  # end

  private

  def milestones_params
    params.require(:milestone).permit(:title, :date)
  end

  def load_mission
    Mission.find(params[:mission_id])
  end
end
