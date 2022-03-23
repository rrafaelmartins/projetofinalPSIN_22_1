class SubjectsController < ApplicationController
  before_action :verify_authenticated
  # before_action :verify_department_coordinator_authenticated
  before_action :set_subject, only: [:show, :update, :destroy]
  
  def index
    @subjects = Subject.all

    render json: @subjects
  end

  def show
    render json: @subject
  end

  def create
    @subject = current_user.subjects.build(subject_params)

    if @subject.save
      render json: @subject
    else
      render json: @subject.errors, status: 422
    end

  end

  def update

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
    params.require(:subject).permit(:name, :hours, :area_knowledge, :user_id)
  end

end