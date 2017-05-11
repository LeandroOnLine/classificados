class RemovePasswordFromLogins < ActiveRecord::Migration[5.0]
  def change
    remove_column :logins, :password, :string
  end
end
