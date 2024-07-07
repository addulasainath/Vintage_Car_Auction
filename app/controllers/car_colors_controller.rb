class CarColorsController < ApplicationController

  def index
    @car_colors = CarColor.all
  end
end
