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


end
