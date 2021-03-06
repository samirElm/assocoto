class ReportsController < ApplicationController
  before_action :authenticate_user!

  def new
    @report = load_mission.reports.build
  end

  def create
    report = load_mission.reports.build(reports_params)

    if report.save
      flash[:notice] = "Le CR a bien été créé"

      redirect_to project_mission_path(report.mission.project, report.mission)
    else
      flash[:error] = "Une erreur est survenue"

      redirect_to :new
    end
  end

  def edit
    @report = load_report
  end

  def update
    report = load_report

    if report.update(reports_params)
      flash[:notice] = "Le CR a bien été modifié"

      redirect_to project_mission_path(report.mission.project, report.mission)
    else
      flash[:error] = "Une erreur est survenue"

      redirect_to :edit
    end
  end

  private

  def reports_params
    params.require(:report).permit(:title, :description, :date)
  end

  def load_mission
    Mission.find(params[:mission_id])
  end

  def load_report
    Report.find(params[:id])
  end
end
