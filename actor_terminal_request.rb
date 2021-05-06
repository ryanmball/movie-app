require "http"

actor = HTTP.get("http://localhost:3000/display_actor?id=ENTER-ID-HERE")

p actor.parse

actors = HTTP.get("http://localhost:3000/display_all_actors")

p actors.parse