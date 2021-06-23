class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :english, :genre_names, :director, :image_url
end
