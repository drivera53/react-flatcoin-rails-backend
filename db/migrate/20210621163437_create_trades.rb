class CreateTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :trades do |t|
      t.decimal :coin_trade_price
      t.integer :quantity
      t.decimal :total
      t.string :type

      t.timestamps
    end
  end
end
