class SavingGoalsController < ApplicationController
  def new
  end

  def create
    binding.pry
    @saving_goal = SavingGoal.new(saving_goal_params.merge(user: current_user))
    if @saving_goal.save
      flash[:success] = "Savings Goal saved"
      render 'home/index'
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
