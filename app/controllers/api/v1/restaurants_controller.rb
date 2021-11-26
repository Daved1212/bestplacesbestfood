class Api::V1::RestaurantsController < ApplicationController
  
  def show
    base_url = "https://api.yelp.com/v3/businesses/yelp_id/reviews"
    response = Faraday.get base_url do |request|
    request.headers["Authorization"] = "Bearer #{ENV["API_KEY"]}"
    render json: Restaurant.find(params[:id])
    end
    parsed_response = JSON.parse(response.body)
    render json: parsed_response
    binding.pry
  end
# move PAI key to ENV file
# create .env.exmaple
# .env is included in gitignore
# replace ENV key here
# user database restaurant yelp id for dynamic requests
# consider moving loginc to a PORO - referencing GiphyWrapper
# gather all data here to be returned as JSON
#  can test returned data visiting `api/v1/restaurants/:id` in the browser
  
end