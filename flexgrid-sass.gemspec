$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "flexgrid-sass/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "flexgrid-sass"
  s.version     = FlexgridSass::VERSION
  s.authors     = ["Rudskikh Ivan"]
  s.email       = ["shredder.rull@gmail.com"]
  s.homepage    = "https://github.com/shredder-rull/flexgrid-sass"
  s.summary     = "Flexbox grid"
  s.description = "Flexbox grid on SCSS"
  s.license     = "MIT"

  s.files = Dir["{assets,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_runtime_dependency 'sass', '>= 3.3.4'
  s.add_runtime_dependency 'autoprefixer-rails', '>= 5.2.1'

end
