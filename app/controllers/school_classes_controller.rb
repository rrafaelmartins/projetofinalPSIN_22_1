class SchoolClassesController < ApplicationController
  def index
    @school_classes = School_class.all

    render json: @school_classes
  end

  def show
    set_school_class

    render json: @school_class
  end

  def create
    @school_class = School_class.new(school_class_params)

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
    @school_class = School_class.find(params[:id])
  end
  
  def school_class_params
    params.require(:school_class).permit(:name, :class_code, :calendar, :class_room)
  end

end
