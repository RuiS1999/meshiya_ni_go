class CreateShopCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_categories do |t|
      t.references :shop,     foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
