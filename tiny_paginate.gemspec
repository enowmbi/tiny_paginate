require_relative "lib/tiny_paginate/version"

Gem::Specification.new do |spec|
  spec.name        = "tiny_paginate"
  spec.version     = TinyPaginate::VERSION
  spec.authors     = [ "Enow Mbi" ]
  spec.email       = [ "benowmbi@yahoo.com" ]
  spec.homepage    = "https://github.com/enowmbi/tiny_paginate"
  spec.summary     = "Simple pagination plugin"
  spec.description = "Simple pagination plugin"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md", "CHANGELOG.md"]
  end

  spec.add_dependency "rails", ">= 8.0.3"
  spec.add_development_dependency "simplecov", "~> 0.22.0"
  spec.add_development_dependency "rspec-rails", "~> 8.0.2"
  spec.add_development_dependency "factory_bot_rails", "~> 6.5.1"
end
