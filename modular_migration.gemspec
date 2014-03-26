$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'modular_migration/version'

Gem::Specification.new do |s|
  s.name = "modular_migration"
  s.version = ModularMigration::VERSION
  s.platform = Gem::Platform::RUBY
  s.author = ['Lijia Tong']
  s.email = ["user_tony@163.com"]
  s.homepage = "https://github.com/user-tony/modular_migration"
  s.summary = "Rails migration file is generated to the relevant module directory."
  s.description = "Rails migration file is generated to the relevant module directory."
  s.license = "MIT"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w[lib]

  s.required_ruby_version = "~> 2.0"
  s.add_dependency 'rails'

end
