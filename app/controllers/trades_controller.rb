class TradesController < ApplicationController
  before_action :set_trade, only: [:show, :update, :destroy]

  # GET /trades
  def index
    @trades = Trade.all

    render json: @trades
  end

  # GET /trades/1
  def show
    render json: @trade
  end

  # POST /trades
  def create
    @trade = Trade.new(trade_params)

    if @trade.save
      user = User.find_by_id(trade_params[:user_id])
      user_json = user.to_json(:include => [
        :portfolios, :trades, :coins])
      # render json: @trade, status: :created, location: @trade
      render json: {
        user: user_json
      }
    else
      render json: @trade.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trades/1
  def update
    if @trade.update(trade_params)
      render json: @trade
    else
      render json: @trade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trades/1
  def destroy
    @trade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade
      @trade = Trade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trade_params
      params.require(:trade).permit(:coin_name, :coin_id, :price, :quantity, :user_id, :portfolio_id, :image)
    end
end
