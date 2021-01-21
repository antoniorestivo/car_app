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
  def show
    @car = Car.find_by(id: params[:id])
    render json: @car
  end
  def update
    @car = Car.find_by(id: params[:id])
    @car.price = params['price'] || @car.price
    @car.brand = params['brand'] || @car.brand
    @car.save
    render json: @car
  end
  def destroy
    @car = Car.find_by(id: params[:id])
    @car.destroy
    render json: {message: "Deleted car"}
  end
    
  
  
end
