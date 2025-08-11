# frozen_string_literal: true

require_relative "lib/portfolio_view_tool/version"

Gem::Specification.new do |spec|
  spec.name = "portfolio_view_tool"
  spec.version = PortfolioViewTool::VERSION
  spec.authors = ["Meeran Siddiqui"]
  spec.email = ["mee.sidd.1919@gmail.com"]

  spec.summary = "A simple Ruby gem for rendering custom portfolio content and copyright notices in Ruby on Rails applications."
  spec.description = "PortfolioViewTool is a lightweight Ruby gem that provides helper methods for rendering portfolio-related content, such as copyright notices, in Ruby on Rails applications. Designed for simplicity and ease of integration, it helps developers quickly add dynamic footer or branding elements to their Rails projects."
  spec.homepage = "https://github.com/M-Meeran-Siddiqui/Portfolio_view_tool"
  spec.required_ruby_version = ">= 3.2.0"

  spec.license = "MIT"
  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ Gemfile .gitignore])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
