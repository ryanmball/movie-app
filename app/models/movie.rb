class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  validates :title, presence: true, uniqueness: true
  validates :year, numericality: { less_than: (Date.today.year + 1) }
  validates :plot, length: { minimum: 50 }
  validates :director, presence: true, length: { in: 4..50 }

  def genre_names
    genres.pluck(:name)
  end
end
