module PhcdevworksAccounts
    module ApplicationHelper
        
        # Auth - User Info
        def user_first_name
            current_user.firstname
        end

        # Auth - Last Name
        def user_last_name
            current_user.lastname
        end

        def user_profile_name
            current_user.username
        end

        def user_avatar
            current_user.gravatar_url
        end

        # Auth - Paths
        def user_link_edit
            phcdevworks_accounts.edit_user_registration_path
        end

        def user_link_logout
            phcdevworks_accounts.destroy_user_session_path
        end

        def admin_link_index
            phcdevworks_accounts.admin_users_index_path
        end

    end
end
