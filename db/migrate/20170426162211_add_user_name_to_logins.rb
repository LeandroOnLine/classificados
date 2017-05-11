class AddUserNameToLogins < ActiveRecord::Migration[5.0]
  def change
    add_column :logins, :user_name, :string, :limit => 100
  end
end
