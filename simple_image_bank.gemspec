$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_image_bank/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_image_bank"
  s.version     = SimpleImageBank::VERSION
  s.authors     = ["Mike Hart"]
  s.email       = ["info@mikedhart.co.uk"]
  s.homepage    = "https://github.com/mikedhart/SimpleImageBank"
  s.summary     = "This is a simple image manager that can be plugged into a Rails app."
  s.description = "This is a simple image manager that can be plugged into a Rails app."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "paperclip", "~> 3.4"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "mysql2"
end
