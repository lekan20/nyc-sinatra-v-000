class FiguresController < ApplicationController

  get '/figures' do #READ all figures
    @figures = Figure.all
    erb :'figures/index'
  end

  get 'figures/new' do #CREATE: make new figures form
    @landmark = Landmark.all
    @titles = Title.all
    erb :'figures/new'
  end
end
