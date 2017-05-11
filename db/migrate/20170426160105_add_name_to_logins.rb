class AddNameToLogins < ActiveRecord::Migration[5.0]
  def change
    add_column :logins, :name, :string, :limit => 100    
  end
end
