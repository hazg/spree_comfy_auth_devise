$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spree_comfy_auth_devise/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spree_comfy_auth_devise"
  s.version     = SpreeComfyAuthDevise::VERSION
  s.authors     = ["hazg"]
  s.email       = ["hazg@mail.ru"]
  s.homepage    = "hazg.net"
  s.summary     = "Devise auth for spree_comfy."
  s.description = "Devise auth for spree_comfy."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"

  s.add_development_dependency "mysql2"
end
