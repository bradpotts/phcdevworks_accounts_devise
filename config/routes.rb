PhcdevworksAccountsDevise::Engine.routes.draw do

    # User Dashboard
    match "user", to: "user/pages#dashboard", via: "get"
    match "user/profile", to: "user/pages#profile", via: "get"

    # Admin Routes
    match "/admin", to: "admin/pages#dashboard", via: "get"
    match "/admin/users/all", to: "admin/pages#users_list", via: "get"
    match "/admin/user/:id", to: "admin/pages#user_profile", via: "get"

    # User Routes
    devise_for :users, class_name: "PhcdevworksAccounts::User",
    module: :devise, 
    controllers: {
        registrations: 'users/registrations'
    }

end
