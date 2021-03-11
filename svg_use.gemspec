# frozen_string_literal: true

require_relative "lib/svg_use/version"

Gem::Specification.new do |spec|
  spec.name          = "svg_use"
  spec.version       = SvgUse::VERSION
  spec.authors       = ["frullah"]
  spec.email         = ["frullah12@gmail.com"]

  spec.summary       = "use inline SVG in your views"
  # spec.description   = ""
  # spec.homepage      = ""
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/frullah/svg_use.git"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "actionview", ">= 5.0.0"
  spec.add_dependency "activesupport", ">= 5.0.0"

  spec.add_development_dependency "capybara", "~> 3"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec-rails"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
