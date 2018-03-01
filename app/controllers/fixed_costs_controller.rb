class FixedCostsController < ApplicationController

  def new
  end

  def create
    @fixed_cost = Fixed_cost.new(fixed_cost_params)
  end

  private

  def fixed_cost_params
    params.require(:fixed_cost).permit(:rent, :insurance, :transportation, :education, :food, :other)
  end
end
