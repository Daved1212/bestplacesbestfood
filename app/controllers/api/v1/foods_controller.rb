class Api::V1::FoodsController < ApplicationController
  def index
   render json: Food.all
  end
  
  def show
    render json: Food.find_by_id(params[:id]), serializer: FoodShowSerializer
  end
end