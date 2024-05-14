class CovidDataController < ApplicationController
  def index
    @london_data = CovidApiService.fetch_covid_data("UK")
    @paris_data = CovidApiService.fetch_covid_data("France")
    @world_wide = CovidApiService.world_wide
    @states = CovidApiService.united_states
    @countries_data = CovidApiService.fetch_all_countries_data
  end
end
