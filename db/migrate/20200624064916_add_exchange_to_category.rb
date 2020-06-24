class AddExchangeToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :exchange, :Integer
  end
end
