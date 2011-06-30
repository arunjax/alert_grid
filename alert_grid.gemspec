# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "alert_grid/version"

Gem::Specification.new do |s|
  s.name        = "alert_grid"
  s.version     = AlertGrid::VERSION
  s.authors     = ["Arun Kumar Arjunan"]
  s.email       = ["arun.immanuel1608@gmail"]
  s.homepage    = ""
  s.summary     = %q{Ruby gem to send signals to alertgrid}
  s.description = %q{Ruby gem to send signals to alertgrid}

  s.rubyforge_project = "alert_grid"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
