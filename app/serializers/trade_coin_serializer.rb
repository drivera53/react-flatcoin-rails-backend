class TradeCoinSerializer < ActiveModel::Serializer
  attributes :id
  has_one :trade
  has_one :coin
end
