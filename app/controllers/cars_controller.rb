class CarsController < ApplicationController
  def cars
		@cars=Car.find(1)
  end
end
