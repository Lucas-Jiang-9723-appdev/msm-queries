class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    render({:template => "actors_template/index.html.erb"})
  end
  def detail
    @actor_id = params.fetch("actor_id")
    @detail_actor = Actor.where({:id => @actor_id}).at(0)
    @actor_character = Character.where({:actor_id => @actor_id})
    render({:template => "actors_template/detail.html.erb"})
  end
end
