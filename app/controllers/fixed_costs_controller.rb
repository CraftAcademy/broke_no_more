class FixedCostsController < ApplicationController

  def new
  end

    def create
      @fixed_cost = FixedCost.new(fixed_cost_params)
      if @fixed_cost.save
        flash[:success] = "Fixed costs saved!"
        redirect_to home_index_path
      else
        flash[:error] = "Please enter valid amount"
        render 'new'
      end
    end


  private

  def fixed_cost_params
    params.require(:fixed_cost).permit(:rent, :insurance, :transportation, :education, :food, :other)
  end
end
