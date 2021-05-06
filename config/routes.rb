Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "display_actor" => "actors#display_actor"

  get "display_all_actors" => "actors#display_all_actors"

  get "display_movie" => "movies#display_movie"

  get "display_all_movies" => "movies#display_all_movies"
end
