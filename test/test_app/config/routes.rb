Rails.application.routes.draw do

    # Root Path
    root :to => 'website/pages#index'

    # Mount Engine for Testing
    mount PhcdevworksAccounts::Engine => "/phcdevworks_accounts"

end
