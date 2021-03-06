lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'webpage_update_checker/version'

Gem::Specification.new do |spec|
  spec.name          = 'webpage_update_checker'
  spec.version       = WebpageUpdateChecker::VERSION
  spec.authors       = ['Osamu Takiya']
  spec.email         = ['takiya@toran.sakura.ne.jp']

  spec.summary       = 'Check whether a webpage is updated'
  spec.description   = 'This gem checks whether a webpage is updated. By HTTP header or hash (MD5, SHA256...) differences, this gem inspects whether the page is updated or not.'
  spec.homepage      = 'https://github.com/nikukyugamer/webpage-update-checker'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename f }
  spec.require_paths = ['lib']

  spec.add_dependency 'mechanize'
  spec.add_dependency 'activesupport'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'rspec-parameterized'
  spec.add_development_dependency 'rspec_junit_formatter'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'yard'
end
