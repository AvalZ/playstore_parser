# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'playstore_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "playstore_parser"
  spec.version       = PlaystoreParser::VERSION
  spec.authors       = ["avalz"]
  spec.email         = ["avalenza89@gmail.com"]

  spec.summary       = %q{Google Play Store API response parser}
  spec.description   = %q{Google Play Store APIs use the ProtoBuf (Protocol Buffers) format for HTTP/HTTPS responses. This gem will parse the response into usable Ruby objects.}
  spec.homepage      = "https://github.com/AvalZ/playstore_parser"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
