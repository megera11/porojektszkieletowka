class CreateFoodItems < ActiveRecord::Migration[6.0]
  def change
    create_table :food_items do |t|
      t.string :name
      t.decimal :kcal, precision: 4, scale: 1
      t.decimal :protein, precision: 4, scale: 1
      t.decimal :carbohydrate, precision: 4, scale: 1
      t.decimal :fat, precision: 4, scale: 1

      t.timestamps
    end
  end
end
