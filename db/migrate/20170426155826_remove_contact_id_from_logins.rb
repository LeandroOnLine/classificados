class RemoveContactIdFromLogins < ActiveRecord::Migration[5.0]
  def change
    remove_column :logins, :contact_id, :integer
  end
end
