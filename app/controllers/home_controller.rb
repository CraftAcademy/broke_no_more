class HomeController < ApplicationController
  def index
  end

  def create
    binding.pry
  end

  def show
    @income = Income.new
  end

  def update
    binding.pry
  end

end
