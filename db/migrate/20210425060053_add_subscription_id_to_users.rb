class AddSubscriptionIdToUsers < ActiveRecord::Migration[7.0]
    def change

        add_column :phcdevworks_accounts_devise_users, :payments_subscription_id, :string

    end
end
