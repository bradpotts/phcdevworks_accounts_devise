$:.push File.expand_path("lib", __dir__)
require "phcdevworks_accounts/version"

Gem::Specification.new do |spec|

  spec.name        = "phcdevworks_accounts"
  spec.version     = PhcdevworksAccounts::VERSION
  spec.authors     = ["PHCDevworks"]
  spec.email       = ["developers@phcdevworks.com"]
  spec.homepage    = "https://phcdevworks.com/"
  spec.summary     = "Rails 6 Accounts Engine"
  spec.description = "Ruby on Rails 6 Authentication and User Management Engine for Enterprise."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #raise "RubyGems 2.0 or newer is required to protect against " \
  #"public gem pushes."
  #end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  spec.add_dependency "rails", "~> 6.0.0.rc2"

  # Theme Dependencies
  spec.add_dependency "phcthemes_admin_panel_pack", "~> 0.24.0"
  spec.add_dependency "phcthemes_web_theme_pack", "~> 0.13.0"
  
  # Helper Dependencies
  spec.add_dependency "phcdevworks_active_menus", "~> 0.28.0"
  spec.add_dependency "phcdevworks_notifications", "~> 0.30.0"
  spec.add_dependency "phcdevworks_titleseo", "~> 0.32.0"

  # Frontend Dependencies
  spec.add_dependency "friendly_id", "~> 5.2"
  spec.add_dependency "gravtastic", "~> 3.2"

  # Security Dependencies
  spec.add_dependency "devise", "~> 4.6"
  spec.add_dependency "simple_token_authentication", "~> 1.15"

  # Payments Dependencies
  spec.add_dependency "activemerchant", "~> 1.93"

  # Development Dependencies
  spec.add_development_dependency "sqlite3", "~> 1.4", ">= 1.4.1"

end
