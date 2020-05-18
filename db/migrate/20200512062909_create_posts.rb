class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :shop_name
      t.string :shop_image_id
      t.string :shop_address
      t.text :caption
      t.string :user_name
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
