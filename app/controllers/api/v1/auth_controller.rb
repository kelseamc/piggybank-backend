class Api::V1::AuthController < ApplicationController
  
  def register
    user = User.create(register_params)
    if user.valid?
      secret = Rails.application.secrets.secret_key_base

      token = JWT.encode({user_id: user.id}, secret, "HS256")

      render json: { user: UserSerializer.new(user), token: token}, status: :created
    else 
      render json: { error: "Username is already taken" }, status: :unprocessable_entity
    end
  end


  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])

      secret = Rails.application.secrets.secret_key_base

      token = JWT.encode({user_id: user.id}, secret, "HS256")

      render json: { user: UserSerializer.new(user), token: token} 
    else
      render json: { error: "Invalid Username or Password" }, status: :unauthorized
    end
  end


  private

  def register_params
    params.permit(:name, :username, :password)
  end
end
