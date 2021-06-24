class CoinSerializer < ActiveModel::Serializer
  attributes :id, :coin_name, :coin_id, :average_price, :quantity, :user_id, :portfolio_id, :image
end
