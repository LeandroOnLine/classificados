class AddContactIdToLogins < ActiveRecord::Migration[5.0]
  def change
    add_column :logins, :contact_id, :integer
  end
end
