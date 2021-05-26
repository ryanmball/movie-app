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

  #USERS
  post "users" => "users#create"

  #LOGINS
  post "sessions" => "sessions#create"

  #MOVIE_GENRES
  get "movie_genres" => "movie_genres#index"
  post "movie_genres" => "movie_genres#create"
end
