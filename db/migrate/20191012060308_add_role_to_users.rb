class AddRoleToUsers < ActiveRecord::Migration[7.0]
  def change

    add_column :phcdevworks_accounts_devise_users, :role, :integer

  end
end
