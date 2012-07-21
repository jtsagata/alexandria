$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "alexandria/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "alexandria"
  s.version     = Alexandria::VERSION
  s.authors     = ["Giannis Tsagatakis"]
  s.email       = ["jtsagata@gmail.com"]
  s.homepage    = "github.com/jtsagata/alexandria"
  s.summary     = "Toys for the greek language."
  s.description = "Provides to_greeklish method for pretty url."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

end
