require "test_helper"

class Api::V1::TicketControllerTest < ActionDispatch::IntegrationTest
  test "should get buy" do
    get api_v1_ticket_buy_url
    assert_response :success
  end
end
