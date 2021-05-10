Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "query_display_actor" => "actors#display_actor"
  # displays a single actor by taking a query parameter in a GET web request
  
  get "url_display_actor/:id" => "actors#display_actor"
  # displays a single actor by taking a URL parameter in a GET web request
  
  post "body_display_actor" => "actors#display_actor"
  # displays a single actor by taking a body parameter in a POST web request
  
  get "display_all_actors" => "actors#display_all_actors"

  get "display_movie" => "movies#display_movie"

  get "display_all_movies" => "movies#display_all_movies"

  get "twenty_first_century_movies" => "movies#twenty_first_century_movies"

  get "movie_id_title" => "movies#movie_id_title"
  
end
