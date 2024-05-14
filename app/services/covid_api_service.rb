class CovidApiService
  include HTTParty
  base_uri "https://disease.sh/v3/covid-19"

  def self.fetch_covid_data(country)
    response = get("/countries/#{country}")
    response.parsed_response
  end

  def self.world_wide
    response = get("/all")
    response.parsed_response
  end

  def self.fetch_all_countries_data
    response = get("/countries")
    parsed_response = response.parsed_response
    parsed_response.sort_by { |country| -country["cases"] }
  end

  def self.united_states
    response = get("/states")
    response.parsed_response
  end
end
