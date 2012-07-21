$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "alexandria/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "alexandria"
  s.version     = Alexandria::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "Toys for the greek language."
  s.description = "Provides o_greeklish method for pretty url."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.6"

  s.add_development_dependency "sqlite3"
end
