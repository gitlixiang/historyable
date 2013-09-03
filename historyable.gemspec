# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'historyable/version'

Gem::Specification.new do |s|
  s.name          = "historyable"
  s.version       = Historyable::VERSION
  s.authors       = ["Philippe Dionne"]
  s.email         = ['philippe.dionne@hooktstudios.com']
  s.homepage      = "https://github.com/hooktstudios/historyable"
  s.licenses      = ['MIT']
  s.summary       = "A simple and solid concern to track ActiveRecord models attributes changes."
  s.description   = "A simple and solid concern to track ActiveRecord models attributes changes."

  s.cert_chain  = ['certs/pdionne-gem-public_cert.pem']
  s.signing_key = File.expand_path("~/.gem/pdionne-gem-private_key.pem") if $0 =~ /gem\z/

  s.files         = `git ls-files app lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubyforge_project = '[none]'

  s.add_dependency 'activerecord', '>= 3.0.0'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'database_cleaner'
end
