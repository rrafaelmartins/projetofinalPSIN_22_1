class AuthController < ApplicationController
  
  def login
    @user = User.find_by!(cpf: login_params[:cpf])

    if @user.authenticate(login_params[:password])
      
      token = JsonWebToken::Base.encode(user_id: @user.id)
      
      render json: {token: token}, status: :ok
    else
      render json: {message: "Password Incorrect"}, status: 401 
    end  
  end

  def signup
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: 422
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :nationality, :state, :rg, :cpf, :birth_data, :email, :password, :kind)
  end

  def login_params
    params.require(:user).permit(:cpf, :password)
  end
end

