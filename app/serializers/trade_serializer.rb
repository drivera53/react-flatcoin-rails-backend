class TradeSerializer < ActiveModel::Serializer
  attributes :id, :coin_name, :coin_id, :price, :quantity, :user_id, :portfolio_id, :created_at, :image
  # belongs_to :user
  # belongs_to :portfolio
end
