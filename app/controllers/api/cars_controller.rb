class Api::CarsController < ApplicationController
  def index

    render json: {message: "test"}
  end
  
end