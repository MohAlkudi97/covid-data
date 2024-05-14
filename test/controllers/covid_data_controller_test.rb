require "test_helper"

class CovidDataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get covid_data_index_url
    assert_response :success
  end
end
