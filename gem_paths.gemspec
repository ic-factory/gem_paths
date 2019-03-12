
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gem_paths/version"

Gem::Specification.new do |spec|
  spec.name          = "gem_paths"
  spec.version       = GemPaths::VERSION
  spec.authors       = ["Torben Jacobsen"]
  spec.email         = ["torben@ic-factory.com"]
  spec.licenses       = ['LGPL-3.0']
  spec.summary       = %q{Gem to be used in plugin for Bundler, which can list gem paths in various output formats, eg. GNU Make.}
  spec.description   = %q{This gem is used to get the paths for all gems known to Bundler in a given project. The paths can be printed in various formats.}
  spec.homepage      = "https://github.com/ic-factory/gem_paths"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 2.0"
  spec.add_dependency "thor", "~> 0.20"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "cucumber", "~> 3.1"
  spec.add_development_dependency "aruba", "~> 0.14"
end
