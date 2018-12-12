require_relative "spec_helper"

def app
  ApplicationController
end

describe ApplicationController do
  it "responds with a welcome message" do
    get '/'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include("Welcome to the Sinatra Template!")
  end
end

describe "Sushi Show View Test" do
  it "contains an H4 with the name of the sushi" do

    @sushi = Sushi.new(name: "My Favorite Sushi")
    sushi_show = ERB.new( File.read('./app/views/sushis/show.erb'), nil, "%")
    puts sushi_show.result(binding)
    expect (sushi_show.result(binding)).include?("<h4>My Favorite Sushi</h4>")
  end
end
