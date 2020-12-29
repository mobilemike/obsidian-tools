require_relative 'lib/obsidian/tools/version'

Gem::Specification.new do |spec|
  spec.name          = "obsidian-tools"
  spec.license       = "MIT"
  spec.version       = Obsidian::Tools::VERSION
  spec.authors       = ["Mike Karolow"]
  spec.email         = ["mobilemike@ygmail.com"]

  spec.summary       = %q{Tools for working with Obsidian markdown files}
  spec.description   = spec.description
  spec.homepage      = "https://github.com/mobilemike/obsidian-tools"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mobilemike/obsidian-tools"
  spec.metadata["changelog_uri"] = "https://github.com/mobilemike/obsidian-tools/blob/main/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
