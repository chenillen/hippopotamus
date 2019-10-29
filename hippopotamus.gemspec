# @Author: Allen C <chenillen>
# @Date:   2019-10-29T14:28:43+08:00
# @Email:  chenillen@gmail.com
# @Last modified by:   chenillen
# @Last modified time: 2019-10-29T14:48:51+08:00
# @Copyright: Copyright (c) 2019 by Allen C.(@chenillen). All Rights Reserved.

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hippopotamus/version'

Gem::Specification.new do |spec|
  spec.name          = 'hippopotamus'
  spec.version       = Hippopotamus::VERSION
  spec.authors       = ['chenillen']
  spec.email         = ['chenillen@gmail.com']

  spec.summary       = 'Wechat service universal management library'
  spec.description   = '微信小程序/公眾號 access_token 統一管理'
  spec.homepage      = 'https://github.com/chenillen/hippopotamus'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'

    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/chenillen/hippopotamus'
    spec.metadata['changelog_uri'] = 'https://github.com/chenillen/hippopotamus/blob/master/README.md'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'redis', '~> 4.1.3'
  spec.add_dependency 'rest-client', '~> 2.1.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
