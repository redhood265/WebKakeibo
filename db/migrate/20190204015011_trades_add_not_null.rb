class TradesAddNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :trades, :exchange, false
    change_column_null :trades, :items, false
    change_column_null :trades, :amount, false
  end
end
