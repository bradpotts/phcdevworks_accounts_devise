# This migration comes from phcdevworks_accounts (originally 20210425060053)
class AddSubscriptionIdToUsers < ActiveRecord::Migration[7.0]
    def change

        add_column :phcdevworks_accounts_users, :payments_subscription_id, :string

    end
end
