class RemoveLoginIdFromAnnouncements < ActiveRecord::Migration[5.0]
  def change
    remove_column :announcements, :login_id, :integer
  end
end
