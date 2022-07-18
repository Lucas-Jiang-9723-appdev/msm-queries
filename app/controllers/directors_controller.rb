class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
    render({:template => "directors_template/index.html.erb"})
  end
  def youngest
    @list_of_directors = Director.all
    @youngest_profile = @list_of_directors.where.not({:dob => nil}).order({:dob => :desc}).at(0)
    render({:template => "directors_template/youngest.html.erb"})
  end
  def eldest
    @list_of_directors = Director.all
    @eldest_profile = @list_of_directors.where.not({:dob => nil}).order({:dob => :desc}).at(-1)
    render({:template => "directors_template/eldest.html.erb"})
  end
  def detail
    @director_id = params.fetch("director_id")
    @detail_director = Director.where({:id => @director_id})
    render({:template => "directors_template/detail.html.erb"})
  end

end
