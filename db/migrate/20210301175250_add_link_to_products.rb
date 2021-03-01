class AddLinkToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :link, :text
  end
end
