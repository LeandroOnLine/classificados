class AddDataToImage < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :data, :binary
  end
end
