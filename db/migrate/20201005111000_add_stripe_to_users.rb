class AddStripeToUsers < ActiveRecord::Migration[6.0]
  def change

    add_column :phcdevworks_accounts_users, :stripe_id, :integer

  end
end
