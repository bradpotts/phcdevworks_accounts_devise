PhcdevworksAccounts::Engine.routes.draw do

    # User Routes
    devise_for :users, {
        class_name: "PhcdevworksAccounts::User",
        module: :devise,
        controllers: { registrations: "users/registrations"}
    }

    # User Dashboard
    get 'dashboard', to: 'accounts/dashboard#index'

    # Admin Routes
    get "admin_dashboard", to: "admin/accounts#index"
    get "admin_users_index", to: "admin/accounts#users_index"

end
