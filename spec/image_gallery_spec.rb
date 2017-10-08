ENV['RACK_ENV'] = 'test'

require_relative '../app'  # <-- your sinatra app
require 'rspec'
require 'rack/test'

describe 'The Image Gallery App' do
  include Rack::Test::Methods

  def app
    App
  end

  it "says hello" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello Image Gallery!')
  end
end
