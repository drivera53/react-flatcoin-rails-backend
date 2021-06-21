class CreateTradeCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :trade_coins do |t|
      t.references :trade, null: false, foreign_key: true
      t.references :coin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
