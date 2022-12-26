class CreateCoupons < ActiveRecord::Migration[6.1]
  def change
    create_table :coupons do |t|
      t.references  :shop,      foreign_key: true
      t.integer     :number,    null: false
      t.string      :title,     null: false
      t.text        :body,      null: false
      t.integer     :limit
      t.boolean     :is_valid,  default: true

      t.timestamps
    end
  end
end
