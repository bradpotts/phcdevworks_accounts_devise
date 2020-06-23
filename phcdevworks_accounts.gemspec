$:.push File.expand_path("lib", __dir__)
require "phcdevworks_accounts/version"

Gem::Specification.new do |spec|

  spec.name        = "phcdevworks_accounts"
  spec.version     = PhcdevworksAccounts::VERSION
  spec.authors     = ["PHCDevworks"]
  spec.email       = ["developers@phcdevworks.com"]
  spec.homepage    = "https://phcdevworks.com/"
  spec.summary     = "Rails 6 - Engine - User Accounts"
  spec.description = "Ruby on Rails 6 Authentication and User Management Engine."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #spec.metadata["allowed_push_host"] = "TODO: Set to "http://mygemserver.com""
  #else
  #raise "RubyGems 2.0 or newer is required to protect against " \
  #"public gem pushes."
  #end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  spec.add_dependency "rails", "~> 6.0", ">= 6.0.3.2"
  spec.add_dependency "jbuilder", "~> 2.10"
  spec.add_dependency "paper_trail", "~> 10.3"

  # Theme Dependencies
  spec.add_dependency "phcthemes_admin_panel_pack", "~> 1.8"
  spec.add_dependency "phcthemes_web_theme_pack", "~> 1.8"

  # Helper Dependencies
  spec.add_dependency "phcdevworks_active_menus", "~> 1.3"
  spec.add_dependency "phcdevworks_core", "~> 1.3"
  spec.add_dependency "phcdevworks_notifications", "~> 1.3"
  spec.add_dependency "phcdevworks_titleseo", "~> 2.2"

  # Frontend Dependencies
  spec.add_dependency "wicked", "~> 1.3"
  spec.add_dependency "friendly_id", "~> 5.3"
  spec.add_dependency "gravtastic", "~> 3.2"

  # Images & Service Support Dependencies
  spec.add_dependency "aws-sdk-s3", "~> 1.67"
  spec.add_dependency "google-cloud-storage", "~> 1.26"
  spec.add_dependency "mini_magick", "~> 4.10"

  # Security Dependencies
  spec.add_dependency "devise", "~> 4.7"
  spec.add_dependency "simple_token_authentication", "~> 1.17"

  # Payments Dependencies
  spec.add_dependency "activemerchant", "~> 1.107"

  # Development Dependencies
  spec.add_development_dependency "sqlite3", "~> 1.4"

end
