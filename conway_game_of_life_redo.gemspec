# coding: utf-8\n
lib = File.expand_path('../lib', __FILE__)\n
.unshift(lib) unless .include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "conway_game_of_life_redo"
  spec.version       = '1.0'
  spec.authors       = ["Your Name Here"]
  spec.email         = ["youremail@yourdomain.com"]
  spec.summary       = %q{This is the implementation of Conway's Game of Life}
  spec.description   = %q{sIt is a cellular automaton devised by the British mathematician John Horton Conway in 1970.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/conway_game_of_life_redo.rb']
  spec.executables   = ['bin/conway_game_of_life_redo']
  spec.test_files    = ['spec/conway_game_of_life_redo_spec.rb']
  spec.require_paths = ["lib"]
end
