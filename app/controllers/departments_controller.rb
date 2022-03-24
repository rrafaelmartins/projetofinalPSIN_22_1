class DepartmentsController < ApplicationController
  # before_action :verify_authenticated
  # before_action :verify_director_authenticated
  before_action :set_department, only: [:show, :update, :destroy]

  def index
    @departments = Department.all

    render json: @departments
  end

  def show
    render json: @department
  end

  def create
    @department = Department.new(department_params)

    if @department.save
      render json: @department
    else
      render json: @department.errors, status: 422
    end

  end

  def update

    if @department.update(department_params)
      render json: @department
    else
      render json: @department.errors, status: 422
    end

  end

  def destroy
    @department.destroy
  end

  private

  def set_department
    @department = current_user.departments.find(params[:id])
  end
  
  def department_params
    params.require(:department).permit(:name, :area_knowledge, :department_code, :department_campus)
  end

end
