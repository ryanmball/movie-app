class MoviesController < ApplicationController

  # before_action :authenticate_admin, except: [:index, :show, :twenty_first_century_movies, :movie_id_title]
  
  def index
    render json: Movie.order(:id)
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english],
      image_url: params[:image_url]
    )
    if movie.save
      render json: movie    # HAPPY PATH
    else
      render json: { errors: movie.errors.full_messages }, status: 422    # SAD PATH
    end
  end

  def show
    render json: Movie.find(params[:id])
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english] || movie.english
    movie.image_url = params[:image_url] || movie.image_url
    if movie.save
      render json: movie    # HAPPY PATH
    else
      render json: { errors: movie.errors.full_messages }, status: 422    # SAD PATH
    end
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
