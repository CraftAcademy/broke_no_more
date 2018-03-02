class SavingGoalsController < ApplicationController
  def new
  end

  def create
    @saving_goal = SavingGoal.new(saving_goal_params)
    if @saving_goal.save
      flash[:success] = "Savings Goal saved"
      redirect_to home_index_path
    else
      flash[:error] = "Please enter valid amount"
      render 'new'
    end
  end


  private

  def saving_goal_params
    params.require(:saving_goal).permit(:amount)
  end
end
