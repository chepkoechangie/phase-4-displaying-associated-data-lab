class ItemsController < ApplicationController

  def show
    dog_house = DogHouse.find(params[:id])
    render json: dog_house
    render json: dog_house, include: :reviews
  end

  private
end
