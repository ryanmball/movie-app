class ActorsController < ApplicationController

  # before_action :authenticate_admin, except: [:index, :show]  
  
  def index
    actors = Actor.all.order(:id)
    render json: actors
  end  

  def create
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
      # movie_id: params[:movie_id]
    )
    if actor.save
      render json: actor    # HAPPY PATH
    else
      render json: { errors: actor.errors.full_messages }, status: 422    # SAD PATH
    end
  end

  def show
    render json: Actor.find(params[:id])
  end

  def update
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.gender = params[:gender] || actor.gender
    actor.age = params[:age] || actor.age
    # actor.movie_id = params[:movie_id] || movie.movie_id
    if actor.save
      render json: actor    # HAPPY PATH
    else
      render json: { errors: actor.errors.full_messages }, status: 422    # SAD PATH
    end
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: { message: "Actor record successfully destroyed!" }
  end
end
