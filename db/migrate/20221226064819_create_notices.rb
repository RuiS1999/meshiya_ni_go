class CreateNotices < ActiveRecord::Migration[6.1]
  def change
    create_table :notices do |t|
      t.references  :admin, foreign_key: true
      t.string      :title, null: false
      t.text        :body,  null: false

      t.timestamps
    end
  end
end
