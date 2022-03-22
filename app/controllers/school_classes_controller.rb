class SchoolClassesController < ApplicationController
  before_action :verify_authenticated
  before_action :verify_department_coordinator_authenticated
  before_action :set_school_class, only: [:show, :update, :destroy]

  def index
    @school_classes = SchoolClass.all

    render json: @school_classes
  end

  def show
    set_school_class

    render json: @school_class
  end

  def create
    @school_class = SchoolClass.new(school_class_params)

    if @school_class.save
      render json: @school_class
    else
      render json: @school_class.errors, status: 422
    end

  end

  def update
    set_school_class

    if @school_class.update(school_class_params)
      render json: @school_class
    else
      render json: @school_class.errors, status: 422
    end

  end

  def destroy
    @school_class.destroy
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end
  
  def school_class_params
    params.require(:school_class).permit(:name, :class_code, :calendar, :class_room, :user_id)
  end

end
