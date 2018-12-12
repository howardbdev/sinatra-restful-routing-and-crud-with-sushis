class SushisController < ApplicationController

  get '/' do
    erb :welcome
  end

  # INDEX ROUTE - SHOW ALL THE THINGS (SUSHIS)
  get '/sushis' do
    # what happens?
    @sushis = Sushi.all
    # erb/redirect?
    # where do we go?
    erb :'/sushis/index'
  end

  # NEW ROUTE - RENDER THE FORM
  get '/sushis/new' do
    # what happens?
    # (nothing needs to happen)
    # erb/redirect?
    # where do we go?
    erb :'/sushis/new'
  end

  # CREATE ACTION
  post '/sushis' do
    # what happens?
    # we need to use the incoming form info to
    # create a new sushi roll!
    @sushi = Sushi.create(params)

    # erb/redirect?
    # where do we go?
    redirect "/sushis/#{@sushi.id}"
  end

  # SHOW ROUTE - SHOW ONE THING
  get '/sushis/:id' do
    # what happens?
    @sushi = Sushi.find(params[:id])
    # erb/redirect?
    # where do we go?
    erb :'/sushis/show'
  end

  get '/sushis/:id/edit' do
    # what happens?
    @sushi = Sushi.find(params[:id])
    # erb/redirect?
    # where do we go?
    erb :'/sushis/edit'
  end

  patch '/sushis/:id' do
    # what happens?
    # we need to use the incoming form info to
    # edit an existing sushi roll!

    @sushi = Sushi.find(params[:id])
    @sushi.update(name: params[:name], description: params[:description], price: params[:price])
    # erb/redirect?
    # where do we go?
    redirect "/sushis/#{@sushi.id}"
  end

  delete '/sushis/:id' do
    @sushi = Sushi.find(params[:id])
    @sushi.destroy

    redirect '/sushis'
  end

end
