class IncomesController < ApplicationController

    def new
    end

    def create
      @income = Income.new(income_params)
      @income.user = current_user
      if @income.save
        flash[:success] = "Income successfully added!"
        render 'home/index'
      else
        flash[:error] = "Please enter valid amount"
        render 'new'
      end
    end

    private

    def income_params
      params.require(:income).permit(:amount)
    end


end
