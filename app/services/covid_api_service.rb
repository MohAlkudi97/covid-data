class CovidApiService
  include HTTParty
  base_uri "https://disease.sh/v3/covid-19"

  def self.fetch_covid_data(country)
    response = get("/countries/#{country}")
    response.parsed_response
  end

  def self.fetch_all
    response = get("/all")
    response.parsed_response
  end
end
