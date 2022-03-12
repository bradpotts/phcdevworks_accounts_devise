require_dependency "phcdevworks_accounts_devise/application_controller"

module PhcdevworksAccountsDevise
    class Admin::PagesController < ApplicationController

        # Filters
        include PhcdevworksCore::PhcdevworksPluginsHelper
        before_action :phcdevworks_accounts_admin_only
        layout "phcdevworks_accounts_devise/application_profile", :only => [ :user_profile ]

        # Account Admin
        def dashboard
        end

        # User Admin
        def users_list
            @admin_users = User.all
        end

        def user_profile
            @admin_user = User.find_by_id(params[:id])
        end

    end
end
