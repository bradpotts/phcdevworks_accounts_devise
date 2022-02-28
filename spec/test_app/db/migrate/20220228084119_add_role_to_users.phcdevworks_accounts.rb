# This migration comes from phcdevworks_accounts (originally 20191012060308)
class AddRoleToUsers < ActiveRecord::Migration[7.0]
  def change

    add_column :phcdevworks_accounts_users, :role, :integer

  end
end
