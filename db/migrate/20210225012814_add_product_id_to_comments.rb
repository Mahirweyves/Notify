class AddProductIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :product_id, :integer
  end
end
