class MovieGenresController < ApplicationController
  def index
    render json: MovieGenre.all.order(:id)
  end
  
  def create
    movie_genre = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id],
    )
    movie_genre.save
    render json: movie_genre
  end
end
