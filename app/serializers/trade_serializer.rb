class TradeSerializer < ActiveModel::Serializer
  attributes :id, :coin_name, :coin_id, :price, :quantity, :user_id, :portfolio_id
end
