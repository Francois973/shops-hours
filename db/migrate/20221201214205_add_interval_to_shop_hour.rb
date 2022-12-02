class AddIntervalToShopHour < ActiveRecord::Migration[7.0]
  def change
    add_column :shop_hours, :range_hours, :jsonb, default: []
  end
end
