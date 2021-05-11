Rails.application.routes.draw do
  #MOVIES
  get "movies" => "movies#index"

  post "movies" => "movies#create"

  get "movies/:id" => "movies#show"

  patch "movies/:id" => "movies#update"

  delete "movies/:id" => "movies#destroy"

  get "twenty_first_century_movies" => "movies#twenty_first_century_movies"

  get "movie_id_title" => "movies#movie_id_title"

  #ACTORS
  get "actors" => "actors#index"

  post "actors" => "actors#create"

  get "actors/:id" => "actors#show"

  patch "actors/:id" => "actors#update"

  delete "actors/:id" => "actors#destroy"
end
