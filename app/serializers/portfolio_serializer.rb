class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :initial_balance, :current_balance
  # belongs_to :user
  # has_many :trades
end
