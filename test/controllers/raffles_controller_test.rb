require "test_helper"

class RafflesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raffle = raffles(:one)
  end

  test "should get index" do
    get raffles_url
    assert_response :success
  end

  test "should get new" do
    get new_raffle_url
    assert_response :success
  end

  test "should create raffle" do
    assert_difference('Raffle.count') do
      post raffles_url, params: { raffle: { description: @raffle.description, draw_date: @raffle.draw_date, end_date_sale: @raffle.end_date_sale, probable_draw_date: @raffle.probable_draw_date, start_date_sale: @raffle.start_date_sale, ticket_value: @raffle.ticket_value, title: @raffle.title, type_id: @raffle.type_id, user_id: @raffle.user_id } }
    end

    assert_redirected_to raffle_url(Raffle.last)
  end

  test "should show raffle" do
    get raffle_url(@raffle)
    assert_response :success
  end

  test "should get edit" do
    get edit_raffle_url(@raffle)
    assert_response :success
  end

  test "should update raffle" do
    patch raffle_url(@raffle), params: { raffle: { description: @raffle.description, draw_date: @raffle.draw_date, end_date_sale: @raffle.end_date_sale, probable_draw_date: @raffle.probable_draw_date, start_date_sale: @raffle.start_date_sale, ticket_value: @raffle.ticket_value, title: @raffle.title, type_id: @raffle.type_id, user_id: @raffle.user_id } }
    assert_redirected_to raffle_url(@raffle)
  end

  test "should destroy raffle" do
    assert_difference('Raffle.count', -1) do
      delete raffle_url(@raffle)
    end

    assert_redirected_to raffles_url
  end
end
