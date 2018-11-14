# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gradient_ruby/version"

Gem::Specification.new do |spec|
  spec.name          = "gradient_ruby"
  spec.version       = GradientRuby::VERSION
  spec.authors       = ["David Stuckmann", "Evan Waters"]
  spec.email         = ["david@retireup.com", "evan@retireup.com"]

  spec.summary       = %q{An API wrapper for the Gradient CRM}
  spec.homepage      = "https://github.com/retireupinc/gradient-ruby"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency 'httparty', '~> 0.14'
  spec.add_dependency 'virtus', '~> 1.0'
end
