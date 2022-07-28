class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:index]
  before_action :country_params, :only => [:index]

  def index
    if params[:country_name] 
      country = Country.find_by_name(params[:country_name])
      render json: country
    end
  end
  
  private

  def country_params
    params.permit(:country_name)
  end
end
