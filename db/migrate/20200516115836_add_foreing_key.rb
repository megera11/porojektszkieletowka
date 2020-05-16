class AddForeingKey < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :consumed_lists, :food_items
  end
end
