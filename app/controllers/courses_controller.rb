class CoursesController < ApplicationController
  before_action :verify_authenticated
  # before_action :verify_director_authenticated
  # before_action :verify_course_coordinator_authenticated 
  before_action :set_course, only: [:show, :update, :destroy]


  def index
    @courses = Course.all

    render json: @courses
  end

  def show
    set_course

    render json: @course
  end

  def create
    @course = current_user.courses.build(course_params)

    if @course.save
      render json: @course
    else
      render json: @course.errors, status: 422
    end

  end

  def update
    set_course

    if @course.update(course_params)
      render json: @course
    else
      render json: @course.errors, status: 422
    end

  end

  def destroy
    @course.destroy
  end

  private

  def set_course
    @course = current_user.courses.find(params[:id])
  end
  
  def course_params
    params.require(:course).permit(:name, :area_knowledge, :course_code, :course_campus)
  end

end
