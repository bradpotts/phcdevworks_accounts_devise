require_dependency "phcdevworks_accounts/application_controller"

module PhcdevworksAccounts
    class User::PagesController < ApplicationController

        # Security Filters
        before_action :authenticate_user!

        # Pages - User
        def profile
            @user_profile = User.find_by_id(params[:id])
        end

    end
end
