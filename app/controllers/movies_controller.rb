class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    @list_of_directors = Director.all
    render({:template => "movies_template/index.html.erb"})
  end
  def detail
    @movie_id = params.fetch("movie_id")
    @detail_movie = Movie.where({:id => @movie_id}).at(0)
    render({:template => "movies_template/detail.html.erb"})
  end
end
