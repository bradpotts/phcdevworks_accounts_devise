class AddTosToUsers < ActiveRecord::Migration[6.0]
  def change

    add_column :phcdevworks_accounts_users, :terms_of_service, :boolean

  end
end
