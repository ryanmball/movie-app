require "http"

actor_id = 14
movie_id = 3

actor = HTTP.get("http://localhost:3000/display_actor?id=#{actor_id}")

p actor.parse

# actors = HTTP.get("http://localhost:3000/display_all_actors")

# p actors.parse

movie = HTTP.get("http://localhost:3000/display_movie?id=#{movie_id}")

p movie.parse

# movies = HTTP.get("http://localhost:3000/display_all_movies")

# p movies.parse