class SchoolYearsController < ApplicationController
  def index
    @school_years = School_year.all

    render json: @school_years
  end

  def show
    set_school_year

    render json: @school_year
  end

  def create
    @school_year = School_year.new(school_year_params)

    if @school_year.save
      render json: @school_year
    else
      render json: @school_year.errors, status: 422
    end

  end

  def update
    set_school_year

    if @school_year.update(school_year_params)
      render json: @school_year
    else
      render json: @school_year.errors, status: 422
    end

  end

  def destroy
    @school_year.destroy
  end

  private

  def set_school_year
    @school_year = School_year.find(params[:id])
  end
  
  def school_year_params
    params.require(:school_year).permit(:year, :semester, :status)
  end

end
