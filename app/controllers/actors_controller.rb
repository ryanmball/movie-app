class ActorsController < ApplicationController
  # def display_actor_by_id(id)
  #   render json: Actor.find(id).as_json
  # end
  # The method above would work if we were making a request in the terminal, but we cant enter an id through a web request. Not sure how this would be handled.
  
  def display_actor
    render json: Actor.find(params[:id]).as_json
  end

  def display_all_actors
    render json: Actor.all.as_json
  end
end
