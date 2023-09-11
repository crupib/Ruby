require_relative "app"
  require "rspec"
 require "rack/test"
RSpec.configure do |config|
  config.expect_with :rspec do |c|
    # Disable the `expect` sytax...
    c.syntax = :should

    # ...or disable the `should` syntax...
    c.syntax = :expect

    # ...or explicitly enable both
    c.syntax = [:should, :expect]
  end
end
describe "Hello application" do
include Rack::Test::Methods
def app
  Sinatra::Application
end
it "says hello" do
     get "/"
     last_response.should be_ok
     last_response.body.should == "Hello Sinatra"
end
end
