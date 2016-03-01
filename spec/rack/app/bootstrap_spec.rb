require 'spec_helper'
require 'rack/app/test'
describe Rack::App::Bootstrap do
  include Rack::App::Test

  it 'has a version number' do
    expect(Rack::App::Bootstrap::VERSION).not_to be nil
  end

  it { expect(described_class.latest_version).to eq '3.3.6' }

  describe 'when class is mounted' do

    context 'and no version specified' do

      rack_app do

        mount Rack::App::Bootstrap, to: '/assets', version: '3.3.6'

      end

      it {expect(get(:url => '/assets/css/bootstrap.min.css')).to be_a Rack::File  }

      it {expect(get(:url => '/assets/js/bootstrap.min.js')).to be_a Rack::File  }

    end

  end

end