class UpdateItemPrice < ActiveRecord::Migration
  def change
    LineItem.all.each do |item|
      product = Product.where(:product_id => item.product_id)
      item.update_attributes :item_price => item.product.price
      item.save!
    end
  end

end
