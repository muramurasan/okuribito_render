$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "okuribito_render/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "okuribito_render"
  s.version     = OkuribitoRender::VERSION
  s.authors     = ["Yasuhiro Matsumura"]
  s.email       = ["ym.contributor@gmail.com"]
  s.homepage    = "https://github.com/muramurasan/okuribito_render"
  s.summary     = "OkuribitoRender is Rails Engine to aims extracts unused views by recording view rendering."
  s.description = "OkuribitoRender is Rails Engine to aims extracts unused views by recording view rendering."
  s.license     = "MIT"

  s.files = Dir["{app,db,lib}/**/*", "config/routes.rb", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ['>= 4.0', '< 6']

  s.add_development_dependency "sqlite3"
end
