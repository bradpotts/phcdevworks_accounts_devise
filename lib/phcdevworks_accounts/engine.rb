module PhcdevworksAccounts
  class Engine < ::Rails::Engine

    # Load Theme Dependencies
    require "phcthemes_admin_panel_pack"
    require "phcthemes_web_theme_pack"

    # Load Helper Dependencies
    require "phcdevworks_active_menus"
    require "phcdevworks_notifications"
    require "phcdevworks_titleseo"

    # Frontend Dependencies
    require 'gravtastic'
    require 'friendly_id'

    # Security Dependencies
    require 'devise'
    require 'simple_token_authentication'

    # Payment Dependencies
    require 'activemerchant'

    # Plugin Namespace
    isolate_namespace PhcdevworksAccounts

    # Load Requried Helper Files
    config.to_prepare do
      PhcdevworksActiveMenus::ApplicationController.helper(ApplicationHelper)
      PhcdevworksNotifications::ApplicationController.helper(ApplicationHelper)
      PhcdevworksTitleseo::ApplicationController.helper(ApplicationHelper)
    end

  end
end
