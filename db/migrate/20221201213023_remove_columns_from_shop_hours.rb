class RemoveColumnsFromShopHours < ActiveRecord::Migration[7.0]
  def change
    remove_column :shop_hours, :start_at, :time
    remove_column :shop_hours, :end_at, :time
  end
end
