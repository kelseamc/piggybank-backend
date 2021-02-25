class Api::V1::UsersController < ApplicationController
    before_action :authorize, only: [:show]
    
    def index
        users = User.all
        render json: users
    end

    def show 
        render json: @user
    end

  

    private

    def user_params 
        params.require(:user).permit(:name, :username, :password)
    end
end
