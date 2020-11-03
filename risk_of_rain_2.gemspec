lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "risk_of_rain_2/version"

Gem::Specification.new do |spec|
  spec.name          = "risk_of_rain_2"
  spec.version       = RiskOfRain2::VERSION
  spec.authors       = ["Stuart Hahn"]
  spec.email         = ["47613093+stuart-hahn@users.noreply.github.com"]

  spec.summary       = %q{Risk of Rain 2 command line cheat sheet.}
  spec.description   = %q{Use the command line to get information about Risk of Rain 2 Survivors, Items, and Artifacts.}
  spec.homepage      = "https://github.com/stuart-hahn/risk_of_rain_2_cli_ruby_gem"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/stuart-hahn/risk_of_rain_2_cli_ruby_gem"
  spec.metadata["changelog_uri"] = "https://github.com/stuart-hahn/changelog.MD"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
