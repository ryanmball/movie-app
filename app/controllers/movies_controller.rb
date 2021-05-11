class MoviesController < ApplicationController
  def index
    render json: Movie.all.sort_by { |movie| movie[:id] }
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
    )
    movie.save
    render json: movie
  end

  def show
    render json: Movie.find(params[:id])
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.save
    render json: movie
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: { message: "Movie record successfully destroyed!" }
  end

  def twenty_first_century_movies
    render json: Movie.where("year >= 2000")
  end

  def movie_id_title
    render json: Movie.select("id, title")
  end
end
