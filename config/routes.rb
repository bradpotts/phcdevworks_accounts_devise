PhcdevworksAccounts::Engine.routes.draw do

    # User Routes
    devise_for :users, {
        class_name: "PhcdevworksAccounts::User",
        module: :devise
    }

    # User Dashboard
    match "user/profile", to: "user/pages#profile", via: "get"

    # Admin Routes
    match "/admin", to: "admin/pages#dashboard", via: "get"
    match "/admin/users/all", to: "admin/pages#users_list", via: "get"
    match "/admin/user/:id", to: "admin/pages#user_id", via: "get"

    # Old Path Support (Will be Depricated)
    get "dashboard", to: "user/pages#profile"
    get "admin_users_index", to: "admin/pages#dashboard"

end
