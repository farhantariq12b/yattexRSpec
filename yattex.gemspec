# frozen_string_literal: true

require_relative "lib/yattex/version"

Gem::Specification.new do |spec|
  spec.name = "yattex"
  spec.version = '0.0.0'
  spec.authors = ["Repo Test"]
  spec.email = ["repotest026@gmail.com"]

  spec.summary = "This is a testing tool"
  spec.description = "This gem executes all the rspec tests and generates an html report and save it into the .yattex folder"
  spec.homepage = "http://rubygems.org/gems/yattex"
  spec.license   = 'MIT'
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "http://rubygems.org/gems/yattex"

  spec.metadata["homepage_uri"] = "http://rubygems.org/gems/yattex"
  spec.metadata["source_code_uri"] = "http://rubygems.org/gems/yattex"
  spec.metadata["changelog_uri"] = "http://rubygems.org/gems/yattex"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = ["yattex"]
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
