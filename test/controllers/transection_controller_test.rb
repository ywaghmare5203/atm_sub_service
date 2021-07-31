require "test_helper"

class TransectionControllerTest < ActionDispatch::IntegrationTest
  test "should get atm" do
    get transection_atm_url
    assert_response :success
  end
end
