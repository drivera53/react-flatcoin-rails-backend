class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :initial_balance, :current_balance
end
