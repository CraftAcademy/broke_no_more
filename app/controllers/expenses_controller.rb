class ExpensesController < ApplicationController
  def new
  end

  def create
    @expense = Expense.new(fixed_cost_params)
    if @expense.save
      flash[:success] = "Expense saved!"
      redirect_to home_index_path
    else
      flash[:error] = "Please enter valid amount"
      render 'new'
    end
  end


  private

  def fixed_cost_params
    params.require(:expense).permit(:rent, :insurance, :transportation, :education, :food, :other)
  end

  def leisure_cost_params
    params.require(:expense).permit(:leisure_activities, :cultural_activities, :holidays, :sport, :eating_out, :beauty, :various)
  end
end
