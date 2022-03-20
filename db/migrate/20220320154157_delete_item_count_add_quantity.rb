class DeleteItemCountAddQuantity < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :item_count, :integer
    add_column :products, :quantity, :integer
  end
end
