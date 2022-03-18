class AddItemCount < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :item_count, :integer
  end
end
