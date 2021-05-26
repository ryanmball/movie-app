class MovieGenreSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :movie_title, :genre_id, :genre_name
end
