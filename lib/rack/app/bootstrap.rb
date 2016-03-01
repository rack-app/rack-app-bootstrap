require 'rack/app'
class Rack::App::Bootstrap < Rack::App

  require 'rack/app/bootstrap/version'

  ASSET_VERSIONS_FOLDER = ::File.join(::File.dirname(__FILE__), 'bootstrap', 'assets')

  on_mounted do |klass, options|
    assets_by_version(options[:version])
  end

  def self.assets_by_version(version)
    version = latest_version if version.nil?

    asset_versions_paths = Dir.glob(::File.join(ASSET_VERSIONS_FOLDER, '*'))
    asset_versions_paths.find { |path| ::File.basename(path) == version } || raise("unknown bootstrap version: #{version}")

    serve_files_from("assets/#{version}")
  end

  def self.latest_version
    Dir.glob(::File.join(ASSET_VERSIONS_FOLDER, '*')).map { |fp|
      ::File.basename(fp)
    }.sort_by { |version|
      Gem::Version.new(version)
    }.last
  end

end