require "test_helper"

class TradeCoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trade_coin = trade_coins(:one)
  end

  test "should get index" do
    get trade_coins_url, as: :json
    assert_response :success
  end

  test "should create trade_coin" do
    assert_difference('TradeCoin.count') do
      post trade_coins_url, params: { trade_coin: { coin_id: @trade_coin.coin_id, trade_id: @trade_coin.trade_id } }, as: :json
    end

    assert_response 201
  end

  test "should show trade_coin" do
    get trade_coin_url(@trade_coin), as: :json
    assert_response :success
  end

  test "should update trade_coin" do
    patch trade_coin_url(@trade_coin), params: { trade_coin: { coin_id: @trade_coin.coin_id, trade_id: @trade_coin.trade_id } }, as: :json
    assert_response 200
  end

  test "should destroy trade_coin" do
    assert_difference('TradeCoin.count', -1) do
      delete trade_coin_url(@trade_coin), as: :json
    end

    assert_response 204
  end
end
