class AddItemPriceToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :item_price, :decimal, precision: 8, scale: 2
  end
end
