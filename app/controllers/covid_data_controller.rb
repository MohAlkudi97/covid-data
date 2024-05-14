class CovidDataController < ApplicationController
  def index
    @london_data = CovidApiService.fetch_covid_data("UK")
    @paris_data = CovidApiService.fetch_covid_data("France")

    @all = CovidApiService.fetch_all
  end
end
