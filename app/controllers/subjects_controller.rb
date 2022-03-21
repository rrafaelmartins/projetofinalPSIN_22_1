class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all

    render json: @subjects
  end

  def show
    set_subject

    render json: @subject
  end

  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      render json: @subject
    else
      render json: @subject.errors, status: 422
    end

  end

  def update
    set_subject

    if @subject.update(subject_params)
      render json: @subject
    else
      render json: @subject.errors, status: 422
    end

  end

  def destroy
    @subject.destroy
  end

  private

  def set_subject
    @subject = Subject.find(params[:id])
  end
  
  def subject_params
    params.require(:subject).permit(:name, :hours, :knowledge_area)
  end

end