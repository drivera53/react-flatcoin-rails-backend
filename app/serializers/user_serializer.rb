class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password
  has_many :portfolios
  has_many :trades, through: :portfolios
end
