class TradeCoinsController < ApplicationController
  before_action :set_trade_coin, only: [:show, :update, :destroy]

  # GET /trade_coins
  def index
    @trade_coins = TradeCoin.all

    render json: @trade_coins
  end

  # GET /trade_coins/1
  def show
    render json: @trade_coin
  end

  # POST /trade_coins
  def create
    @trade_coin = TradeCoin.new(trade_coin_params)

    if @trade_coin.save
      render json: @trade_coin, status: :created, location: @trade_coin
    else
      render json: @trade_coin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trade_coins/1
  def update
    if @trade_coin.update(trade_coin_params)
      render json: @trade_coin
    else
      render json: @trade_coin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trade_coins/1
  def destroy
    @trade_coin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade_coin
      @trade_coin = TradeCoin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trade_coin_params
      params.require(:trade_coin).permit(:trade_id, :coin_id)
    end
end
