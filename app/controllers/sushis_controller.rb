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

  # SHOW ROUTE - SHOW ONE THING
  get '/sushis/:id' do
    raise params.inspect
    # what happens?
    @sushi = Sushi.find(params[:id])
    # erb/redirect?
    # where do we go?
    erb :'/sushis/show'
  end


  # CREATE ACTION
  # post '/sushis'


end
