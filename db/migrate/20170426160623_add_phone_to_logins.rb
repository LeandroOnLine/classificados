class AddPhoneToLogins < ActiveRecord::Migration[5.0]
  def change
    add_column :logins, :phone, :string, :limit => 20
  end
end
