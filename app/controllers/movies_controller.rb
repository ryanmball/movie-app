class MoviesController < ApplicationController
  def display_movie
    render json: Movie.find(params[:id]).as_json
  end

  def display_all_movies
    render json: Movie.all.as_json
  end 
end
