class Api::CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end
  def create
    @car = Car.new({
      brand: params['brand'],
      price: params['price']
      })
    @car.save
    render json: @car
  end
  
end
