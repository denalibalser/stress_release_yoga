
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "stress_release_yoga/version"

Gem::Specification.new do |spec|
  spec.name          = "stress_release_yoga"
  spec.version       = StressReleaseYoga::VERSION
  spec.authors       = ["Denali Balser"]
  spec.email         = ["denali.balser167@gmail.com"]

  spec.summary       = "Stress Release Yoga CLI"
  spec.description   = "A simple CLI application that scrapes yoga poses and displays them to user."
  spec.homepage      = "https://rubygems.org/gems/stress_release_yoga"  
  spec.license       = "MIT"

  
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency 'rake', '~> 12.3', '>= 12.3.3'
  
  spec.add_dependency "nokogiri", ">= 1.11.0"
end
