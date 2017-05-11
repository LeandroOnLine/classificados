class CreateLogins < ActiveRecord::Migration[5.0]
  def change
    create_table :logins do |t|
      t.string :email, limit: 250
      t.string :password, limit: 8

      t.timestamps
    end
  end
end
