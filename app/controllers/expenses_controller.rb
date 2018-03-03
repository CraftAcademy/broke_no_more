class ExpensesController < ApplicationController
  def new
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.user = current_user
    if @expense.save
      flash[:success] = "Expense saved!"
      render 'home/index'
    else
      flash[:error] = "Please enter valid amount"
      render 'new'
    end
  end


  private

  def expense_params
    params.require(:expense).permit(:rent, :insurance, :transportation,
       :education, :food, :leisure_activities, :cultural_activities,
       :holidays, :sport, :eating_out, :beauty, :various)
  end
end
