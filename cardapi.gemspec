$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cardapi/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cardapi"
  s.version     = Cardapi::VERSION
  s.authors     = ["Jose Eduardo Mourao"]
  s.email       = ["eduardo@intermeta.com.br"]
  s.homepage    = "http://eduardo.intermeta.com.br"
  s.summary     = "CardAPI: Rubyconf Brasil 2014"
  s.description = "CardAPI: Rubyconf Brasil 2014"
  s.license     = "MIT-LICENSE"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_development_dependency "sqlite3"
end
