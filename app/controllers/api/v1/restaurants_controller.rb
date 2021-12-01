class Api::V1::RestaurantsController < ApplicationController
  
  def show
    restaurant = Restaurant.find(params[:id])
    base_url = "https://api.yelp.com/v3/businesses/#{restaurant.yelp_id}/reviews"
    response = Faraday.get base_url do |request|
    request.headers["Authorization"] = "Bearer #{ENV["API_KEY"]}"
    end
    parsed_response = JSON.parse(response.body)
    render json: {restaurant: RestaurantSerializer.new(restaurant), yelpData: parsed_response}
  end
# replace ENV key here
# user database restaurant yelp id for dynamic requests
# consider moving loginc to a PORO - referencing GiphyWrapper
# gather all data here to be returned as JSON
#  can test returned data visiting `api/v1/restaurants/:id` in the browser
  end
  # , yelpId: YelpSerializer.new(parsed_response)