class User < ApplicationRecord
  has_secure_password

  has_many :portfolios
  has_many :trades, through: :portfolios

  # validates :first_name, :last_name, :email, presence: true
end
