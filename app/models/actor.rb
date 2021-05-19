class Actor < ApplicationRecord
  belongs_to :movie

  def movie_plot
    movie.plot
  end

  validates :first_name, presence: true, length: { minimum: 3 }
  validates :last_name, presence: true, length: { minimum: 3 }
  validates :known_for, presence: true
  validates :age, numericality: { greater_than: 13 }
end
