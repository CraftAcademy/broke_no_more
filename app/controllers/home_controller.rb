class HomeController < ApplicationController
  def index
  end

  def create
  end

  def show
    @income = Income.new(params:[:id])
  end

  def update
  end

end
