Rails.application.routes.draw do

    # Root Route
    root :to => 'website/pages#index'
    
    # Mount Engine
    mount PhcdevworksAccounts::Engine => "/"

end
