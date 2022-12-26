class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.references  :shop,      foreign_key: true
      t.string      :title,     null: false
      t.text        :body,      null: false
      t.integer     :price,     null: false
      t.boolean     :is_valid,  default: true

      t.timestamps
    end
  end
end
