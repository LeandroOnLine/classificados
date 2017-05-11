class CreateAnnouncements < ActiveRecord::Migration[5.0]
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.integer :category_id
      t.integer :sub_category_id
      t.integer :login_id
      t.datetime :expire_date

      t.timestamps
    end
  end
end
