require_dependency "phcdevworks_accounts/application_controller"

module PhcdevworksAccounts
    class Admin::PagesController < ApplicationController

        # Filters
        include PhcdevworksCore::PhcdevworksPluginsHelper
        before_action :phcdevworks_accounts_admin_only
        layout "phcdevworks_accounts/application_profile", :only => [ :user_profile ]

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
