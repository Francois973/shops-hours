class AddStartAtAndEnAt < ActiveRecord::Migration[7.0]
  def change
    add_column :shop_hours, :start_at, :jsonb, default: []
    add_column :shop_hours, :end_at, :jsonb, default: []
  end
end
