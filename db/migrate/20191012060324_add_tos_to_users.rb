class AddTosToUsers < ActiveRecord::Migration[7.0]
  def change

    add_column :phcdevworks_accounts_devise_users, :terms_of_service, :boolean

  end
end
