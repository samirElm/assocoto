class DepartmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @departments = Department.all
  end
end
