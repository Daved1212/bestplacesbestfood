class Api::V1::ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  
  def create
  end
end