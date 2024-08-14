require_relative "lib/lemmy/version"

Gem::Specification.new do |spec|
  spec.name = "lemmy"
  spec.version = Lemmy::VERSION
  spec.authors = ["Ryan Augustynowicz"]
  spec.email = ["admin@lemmy.vg"]

  spec.summary = "A Ruby Lemmy API wrapper for integration with Rails"
  spec.homepage = "https://github.com/lemmy-vg/ruby-lemmy"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/lemmy-vg/ruby-lemmy/issues",
    "changelog_uri" => "https://github.com/lemmy-vg/ruby-lemmy/releases",
    "source_code_uri" => "https://github.com/lemmy-vg/ruby-lemmy",
    "homepage_uri" => spec.homepage,
    "rubygems_mfa_required" => "true"
  }

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob(%w[LICENSE.txt README.md {exe,lib}/**/*]).reject { |f| File.directory?(f) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Runtime dependencies
  # spec.add_dependency "thor", "~> 1.2"
end
