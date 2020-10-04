PhcdevworksAccounts::Engine.routes.draw do

    # User Routes
    devise_for :users, {
        class_name: "PhcdevworksAccounts::User",
        module: :devise
    }

    # User Dashboard
    get "profile", to: "user/pages#profile"

    # Admin Routes
    get "admin", to: "admin/pages#dashboard"
    get "user_index", to: "admin/pages#user_index"

end
