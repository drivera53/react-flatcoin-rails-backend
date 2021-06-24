# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(:first_name => "Verena", :last_name => "last", :email => "last@test.com", :password => "pass")

portfolio1 = Portfolio.create(:name => "Doge Portfolio", :description => "Testing Doge", :initial_balance => 10000, :user_id => 1)

trade1 = Trade.create(:coin_name => "Bitcoin", :coin_id => "btc", :price => 56909, :quantity => 90, :user_id => 1, :portfolio_id => 1)

Coin1 = Coin.create(:coin_name => "Bitcoin", :coin_id => "btc", :average_price => 56909, :quantity => 90, :user_id => 1, :portfolio_id => 1, :image => "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579")