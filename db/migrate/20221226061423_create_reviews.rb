class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references  :user,        foreign_key: true
      t.references  :shop,        foreign_key: true
      t.integer     :evaluation,  null: false
      t.string      :title,       null: false
      t.text        :body,        null: false
      t.integer     :more_people, null: false

      t.timestamps
    end
  end
end
