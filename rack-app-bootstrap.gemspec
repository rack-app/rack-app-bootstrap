# coding: utf-8

Gem::Specification.new do |spec|

  spec.name          = "rack-app-bootstrap"
  spec.version       = File.read('./VERSION').strip
  spec.authors       = ["Adam Luzsi"]
  spec.email         = ["adamluzsi@gmail.com"]

  spec.summary       = %q{Rack::App Twitter Bootstrap integration}
  spec.description   = %q{Rack::App Twitter Bootstrap integration}
  spec.homepage      = 'http://www.rack-app.com/'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "rack-app", ">= 2.3.0"

end
