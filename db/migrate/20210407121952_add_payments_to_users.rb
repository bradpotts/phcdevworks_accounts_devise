class AddPaymentsToUsers < ActiveRecord::Migration[6.1]
    def change

        add_column :phcdevworks_accounts_users, :payments_customer_id, :string
        add_column :phcdevworks_accounts_users, :payments_subscription_id, :string
        add_column :phcdevworks_accounts_users, :payments_plan_id, :string

    end
end
