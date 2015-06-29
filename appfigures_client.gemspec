
# -*- encoding: utf-8 -*-
$:.push('lib')
require 'appfigures_client/version'

Gem::Specification.new do |s|
  s.name     = 'appfigures_client'
  s.version  = AppfiguresClient::VERSION.dup
  s.date     = '2015-06-26'
  s.summary  = 'API client for AppFigures'
  s.email    = 'alexey@ioncloud.ru'
  s.homepage = 'http://github.com/addmitriev/appfigures_client'
  s.authors  = ['Aleksey Dmitriev']
  
  s.description = <<-EOF
    Long description
EOF
  
  dependencies = [
    # Examples:
    # [:runtime,     "rack",  "~> 1.1"],
    # [:development, "rspec", "~> 2.1"],
  ]
  
  s.files         = Dir['**/*']
  s.test_files    = Dir['test/**/*'] + Dir['spec/**/*']
  s.executables   = Dir['bin/*'].map { |f| File.basename(f) }
  s.require_paths = ['lib']
  
  
  ## Make sure you can build the gem on older versions of RubyGems too:
  s.rubygems_version = "2.4.6"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.specification_version = 3 if s.respond_to? :specification_version
  
  dependencies.each do |type, name, version|
    if s.respond_to?("add_#{type}_dependency")
      s.send("add_#{type}_dependency", name, version)
    else
      s.add_dependency(name, version)
    end
  end
end
