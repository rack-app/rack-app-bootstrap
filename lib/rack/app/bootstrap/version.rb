require 'rack/app/bootstrap'
Rack::App::Bootstrap::VERSION = ::File.read(::File.join(::File.dirname(__FILE__), '..', '..', '..', '..', 'VERSION')).strip