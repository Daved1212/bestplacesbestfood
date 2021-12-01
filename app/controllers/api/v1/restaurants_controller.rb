class Api::V1::RestaurantsController < ApplicationController
  
  def show
    restaurant = Restaurant.find(params[:id])
    base_url = "https://api.yelp.com/v3/businesses/#{restaurant.yelp_id}/reviews"
    response = Faraday.get base_url do |request|
    request.headers["Authorization"] = "Bearer #{ENV["API_KEY"]}"
    end
    parsed_response = JSON.parse(response.body)
    # add a serializer here 
    render json: {restaurant: RestaurantSerializer.new(restaurant), yelpData: parsed_response}
  end
end
