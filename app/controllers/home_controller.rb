class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:index]
  before_action :country_params, :only => [:index]

  def index
    if params[:country_name] 
      country_data = Country.find_by_name(params[:country_name])
      data = [
        {
          key: 'Name',
          value: country_data.name
        },{
          key: 'Name ES',
          value: country_data.name_es
        },{
          key: 'Name AR',
          value: country_data.name_ar
        },{
          key: 'Name FR',
          value: country_data.name_fr
        },{
          key: 'Income Group',
          value: country_data.income_group
        },{
          key: 'Economy',
          value: country_data.economy
        },{
          key: 'Woe Note',
          value: country_data.woe_note
        },{
          key: 'GDP Year',
          value: country_data.gdp_year
        },{
          key: 'GDP MD',
          value: country_data.gdp_md
        }
      ]

      render json: data
    end
  end
  
  private

  def country_params
    params.permit(:country_name)
  end
end
