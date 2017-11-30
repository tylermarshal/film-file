class FilmFile < Sinatra::Base
  get '/' do
    erb :home
  end

  get "/films" do
    @films = Film.all
    erb :"films/index"
  end

  get '/films/:id' do
    film = Film.find(params[:id])
    erb :"films/show", locals: {film: film}
  end
end
