class MoviesController < ApplicationController
  def display_movie
    render json: Movie.find(params[:id]).as_json
  end

  def display_all_movies
    render json: Movie.all.as_json
  end

  def twenty_first_century_movies
    render json: Movie.where("year >= 2000")
  end

  def movie_id_title
    render json: Movie.select("id, title")
  end
end
