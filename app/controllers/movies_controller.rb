class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    @list_of_directors = Director.all
    render({:template => "movies_template/index.html.erb"})
  end

end
