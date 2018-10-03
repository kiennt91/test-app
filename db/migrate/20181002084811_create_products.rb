class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :category_id   , null: false
      t.integer :publisher_id  , null: false
      t.string  :name          , null: false
      t.integer :total_amount  , null: false, default: 0
      t.integer :sell_amount   , null: false, default: 0
      t.integer :price         , null: false, default: 0
      t.string  :image_url     , null: false
      t.text    :description
      t.integer :status        , null: false, default: 0

      t.timestamps
    end

    add_index :products, [:category_id, :publisher_id, :name], name: :idx_cate_publ_prod, unique: true
    add_index :products, :category_id, name: :idx_category_id
    add_index :products, :publisher_id, name: :idx_publisher_id 
  end
end
