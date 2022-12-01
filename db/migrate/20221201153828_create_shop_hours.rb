class CreateShopHours < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_hours do |t|
      t.references :shop, null: false, foreign_key: true
      t.integer :day_of_week
      t.time :start_at
      t.time :end_at

      t.timestamps
    end
  end
end
