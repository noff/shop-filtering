class CreateItems < ActiveRecord::Migration
  def change

    create_table :categories do |t|
      t.string :name
      t.integer :parent_id
    end

    add_index :categories, :parent_id

    create_table :items do |t|
      t.integer :category_id
      t.string :name
      t.integer :price
      t.string :country
      t.boolean :enable
      t.boolean :is_popular
      t.boolean :on_order
    end

    add_index :items, [:category_id, :price, :country, :enable, :is_popular, :on_order], name: 'idx_items'

  end
end
