class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.integer 	 :announcement_id
      t.integer    :image_id
      t.string     :style
      t.binary     :file_contents
      t.timestamps
    end
  end
end
