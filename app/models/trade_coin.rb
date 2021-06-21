class TradeCoin < ApplicationRecord
  belongs_to :trade
  belongs_to :coin
end
