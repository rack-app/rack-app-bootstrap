require 'rack/app/bootstrap'
class Rack::App::Bootstrap::Assets < Rack::App
  serve_files_from './assets'
end