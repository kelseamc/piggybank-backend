class Api::V1::TransactionsController < ApplicationController

    def index
        transactions = Transaction.all
        render json: transactions
    end

    def create 
        
        transaction = Transaction.create(transaction_params)
        render json: transaction
    end

    def destroy
        transaction = Transaction.find(params[:id])
        transaction.destroy!
        render json: transaction
    end 

    def show 
        transaction = Transaction.find(params[:id])
        render json: transaction
    end
 


    private

    def transaction_params
        params.require(:transaction).permit(:account_id, :user_id, :amount, :category)
    end
end
