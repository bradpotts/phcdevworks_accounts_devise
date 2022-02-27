module PhcdevworksAccounts
  class Engine < ::Rails::Engine

    # Load Main Dependencies
    require "jbuilder"
    require "paper_trail"
    require "friendly_id"

    # Load Theme Dependencies
    require "phcthemes_admin_panel_pack"
    require "phcthemes_web_theme_pack"

    # Load Helper Dependencies
    require "phcdevworks_core"
    require "phcdevworks_active_menus"
    require "phcdevworks_notifications"
    require "phcdevworks_titleseo"

    # Load Upload Dependencies
    require "aws-sdk-s3"
    require "google-cloud-storage"
    require "mini_magick"

    # Frontend Dependencies
    require "wicked"
    require "friendly_id"

    # Mailer Dependencies
    require "mail_form"

    # Security & Payment Dependencies
    require "devise"
    require "simple_token_authentication"
    require "stripe"

    # Plugin Namespace
    isolate_namespace PhcdevworksAccounts

    # Rspec Generators
    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_bot
      g.factory_bot dir: 'spec/factories'
    end

  end
end
