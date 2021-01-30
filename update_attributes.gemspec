# frozen_string_literal: true

require_relative "lib/update_attributes/version"

Gem::Specification.new do |spec|
  spec.name          = "update_attributes"
  spec.version       = UpdateAttributes::VERSION
  spec.authors       = ["Marcus Wyatt"]
  spec.email         = ["mlwyatt2008@gmail.com"]

  spec.summary       = "Adds update_attributes/update_attributes! back into Rails 6.1"
  spec.homepage      = 'https://rubygems.org/gems/update_attributes'
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mlwyatt/update_attributes"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files = Dir.chdir(File.expand_path(__dir__)) do
  #   `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  # end
  spec.files = ['lib/update_attributes.rb','lib/update_attributes/version.rb']
  spec.bindir        = "exe"
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/update_attributes/extconf.rb"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
