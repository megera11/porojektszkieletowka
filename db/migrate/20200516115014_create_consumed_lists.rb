class CreateConsumedLists < ActiveRecord::Migration[6.0]
  def change
    create_table :consumed_lists do |t|
      t.integer :user_id
      t.integer :food_item_id
      t.decimal :amount_consumed, precision: 3, scale: 1

      t.timestamps
    end
  end
end
