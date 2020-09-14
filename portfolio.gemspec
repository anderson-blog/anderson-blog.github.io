# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "portfolio"
  spec.version       = "0.1.0"
  spec.authors       = ["Anderson Antunes"]
  spec.email         = ["anderson.utf@gmail.com"]

  spec.summary       = "Github pages theme"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"
end
