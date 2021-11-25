class Api::V1::RestaurantsController < ApplicationController
  
  def show
    base_url = "https://api.yelp.com/v3/businesses/CTZnZuz-6deAyOz9sxokww/reviews"
    response = Faraday.get base_url do |request|
      request.headers["Authorization"] = "Bearer 7d82Sz5x0_6TMDznTZMfuFEZO4F6hVGK7WvCPG_YA2ExvEiMsGd3czCuoz9HernOwg1KD6OsdoID70uUGRhMSurtXILSbJ9tOKAuWtpeJA3cBpnPXEuViR6DiVmeYXYx "
      request.headers["Authorization"] = "Bearer #{ENV["YELP_API_KEY"]}"
    end
    parsed_response = JSON.parse(response.body)
    # binding.pry
    # render json: Restaurant.find(params[:id])
    render json: parsed_response
  end
# move PAI key to ENV file
# create .env.exmaple
# .env is included in gitignore
# replace ENV key here
# user database restaurant yelp id for dynamic requests

# consider moving loginc to a PORO - referencing GiphyWrapper
# gather all data here to be returned as JSON
#  can test returned data visiting `api/v1/restaurants/:id` in the browser
# React will only fetch to your controllers
# Rails controllers handle all requests from React and 3rd party APIs
  
  # base URL in PORO - https://api.yelp.com/v3
end