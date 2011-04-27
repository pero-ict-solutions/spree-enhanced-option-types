Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_enhanced_option_types'
  s.version     = '0.50.0'
  s.summary     = 'Enchances Spree functionality when handling products with numerous and complex variants.'
  s.description = 'This extension enchances spree functionality when handling products with numerous and complex variants.'
  s.required_ruby_version = '>= 1.8.7'

  s.authors            = ['Marcin Raczkowski', 'Brian Quinn', 'Roman Smirnov']
  # s.email             = 'david@loudthinking.com'
  s.homepage          = 'http://github.com/romul/spree-enhanced-option-types'
  # s.rubyforge_project = 'actionmailer'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 0.30.2')
end
