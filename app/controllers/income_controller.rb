class IncomeController < ApplicationController

  def new
  end


  def create
    @income = Income.new(amount: params[:amount])
    if @income.save
      flash[:success] = "Income successfully added!"
      redirect_to home_index_path
    else
      flash[:error] = "Please enter valid amount"
      render 'new'
    end
  end

  def update
  end



end
