class Api::V1::PiggyBanksController < ApplicationController

    def index 
        piggys = PiggyBank.all 
        render json: piggys
    end

    def create 
        new_piggy = PiggyBank.create(piggy_params)
        render json: new_piggy
    end

    def destroy
        piggy = PiggyBank.find(params[:id])
        piggy.destroy
        render json: piggy 
    end

    def update
        piggy = PiggyBank.find(params[:id])
        piggy.update(piggy_params)
        render json: piggy
    end



    private

    def piggy_params
        params.require(:piggy_bank).permit(:name, :goal, :current_balance, :user_id, :category)
    end
end
