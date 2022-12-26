class CreateShopNotices < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_notices do |t|
      t.references  :shop,  foreign_key: true
      t.string      :title, null: false
      t.text        :body,  null: false

      t.timestamps
    end
  end
end
