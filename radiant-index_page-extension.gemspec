# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-index_page-extension/version"

Gem::Specification.new do |s|
  s.name        = "radiant-index_page-extension"
  s.version     = RadiantIndexPageExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Benny Degezelle"]
  s.email       = ["benny@gorilla-webdesign.be"]
  s.homepage    = "http://github.com/jomz/radiant-index-page-extension"
  s.summary     = %q{Index Page for Radiant CMS}
  s.description = %q{Makes Radiant better by adding index_page!}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.post_install_message = %{
  Add this to your radiant project with:
    config.gem 'radiant-index_page-extension', :version => '#{RadiantIndexPageExtension::VERSION}'
  }
end