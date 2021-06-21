class TradeSerializer < ActiveModel::Serializer
  attributes :id, :coin_trade_price, :quantity, :total, :type
end
