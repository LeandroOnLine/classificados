class AddPasswordDigestToLogins < ActiveRecord::Migration[5.0]
  def change
    add_column :logins, :password_digest, :string
  end
end
