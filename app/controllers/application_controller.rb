class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!

  get '/recipes/new' do #loads new form
    erb :new
  end

  post '/recipes' do  #creates a recipe
    @recipe = Recipe.create(params)
    redirect to "/recipes/#{@recipe.id}"
  end

end
