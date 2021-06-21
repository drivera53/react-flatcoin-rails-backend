class CoinSerializer < ActiveModel::Serializer
  attributes :id, :name, :symbol, :image
end
