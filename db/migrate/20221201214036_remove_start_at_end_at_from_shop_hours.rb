class RemoveStartAtEndAtFromShopHours < ActiveRecord::Migration[7.0]
  def change
    remove_column :shop_hours, :start_at, :jsonb
    remove_column :shop_hours, :end_at, :jsonb
  end
end
