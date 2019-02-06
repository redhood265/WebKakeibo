class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades do |t|
      t.string :exchange
      t.string :items
      t.integer :amount
      t.text :remarks

      t.timestamps
    end
  end
end
