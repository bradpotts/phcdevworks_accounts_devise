require_relative "lib/phcdevworks_accounts/version"

Gem::Specification.new do |spec|

  # Engine Data
  spec.name        = "phcdevworks_accounts"
  spec.version     = PhcdevworksAccounts::VERSION
  spec.authors     = ["PHCDevworks"]
  spec.email       = ["imfo@phcdevworks.com"]
  spec.homepage    = "https://phcdevworks.com/"
  spec.summary     = "Rails 6 - Engine - User Accounts"
  spec.description = "Ruby on Rails 6 Authentication and User Management Engine using Devise with a nice-looking dashboard, admin panel and login views to get you going fast on your next project."
  spec.license     = "MIT"

  # Engine Meta Data
  spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/phcdevworks/phcdevworks_accounts"
  spec.metadata["changelog_uri"] = "https://github.com/phcdevworks/phcdevworks_accounts/releases"

  # Engine Files
  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  spec.add_dependency "rails", "~> 6.1"
  spec.add_dependency "jbuilder", "~> 2.11"
  spec.add_dependency "paper_trail", "~> 11.1"

  # Theme Dependencies
  spec.add_dependency "phcthemes_admin_panel_pack", "~> 4.0"
  spec.add_dependency "phcthemes_web_theme_pack", "~> 4.0"

  # Helper Dependencies
  spec.add_dependency "phcdevworks_active_menus", "~> 2.2"
  spec.add_dependency "phcdevworks_core", "~> 2.2"
  spec.add_dependency "phcdevworks_notifications", "~> 2.2"
  spec.add_dependency "phcdevworks_titleseo", "~> 3.2"

  # Frontend Dependencies
  spec.add_dependency "wicked", "~> 1.3"
  spec.add_dependency "friendly_id", "~> 5.4"
  spec.add_dependency "gravtastic", "~> 3.2"

  # Mailer Dependencies
  spec.add_dependency "mail_form", "~> 1.9"

  # Images & Service Support Dependencies
  spec.add_dependency "aws-sdk-s3", "~> 1.89"
  spec.add_dependency "google-cloud-storage", "~> 1.30"
  spec.add_dependency "mini_magick", "~> 4.11"

  # Security Dependencies
  spec.add_dependency "devise", "~> 4.7"
  spec.add_dependency "simple_token_authentication", "~> 1.17"

  # Development Dependencies
  spec.add_development_dependency "sqlite3", "~> 1.4"

end
