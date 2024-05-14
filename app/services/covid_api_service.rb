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

  def self.fetch_all_countries_data(page_number, page_size)
    response = get("/countries")
    countries_data = response.parsed_response

    sorted_countries = countries_data.sort_by { |country| -country["cases"] }

    Kaminari.paginate_array(sorted_countries)
      .page(page_number)
      .per(page_size)
  end

  def self.united_states
    response = get("/states")
    response.parsed_response
  end
end
