class UsersController < ApplicationController
  # before_action :verify_authenticated
  before_action :set_user, only: [:show, :update, :destroy]
  
  def index
    @users = User.all

    render json: @users
  end

  def show
    set_user

    render json: @user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      render json: @user.errors, status: 422
    end

  end

  def update
    set_user

    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: 422
    end

  end

  def destroy
    @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:name, :nationality, :state, :rg, :cpf, :birth_data, :email, :password, :kind)
  end

end
