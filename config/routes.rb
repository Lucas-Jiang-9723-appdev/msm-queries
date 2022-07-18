Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors",{:controller => "directors", :action=>"index"})
  get("/movies",{:controller => "movies", :action=>"index"})
  get("/actors",{:controller => "actors", :action=>"index"})
  get("/directors/youngest",{:controller => "directors", :action=>"youngest"})
  get("/directors/eldest",{:controller => "directors", :action=>"eldest"})
  get("/directors/:director_id",{:controller => "directors", :action=>"detail"})
  get("/movies/:movie_id",{:controller => "movies", :action=>"detail"})
  get("/actors/:actor_id",{:controller => "actors", :action=>"detail"})
end
