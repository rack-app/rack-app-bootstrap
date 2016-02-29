require 'spec_helper'

describe Rack::App::Bootstrap do
  it 'has a version number' do
    expect(Rack::App::Bootstrap::VERSION).not_to be nil
  end

end
