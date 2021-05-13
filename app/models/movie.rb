class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :year, numericality: { less_than: (Date.today.year + 1) }
  validates :plot, length: { minimum: 50 }
  validates :director, presence: true, length: { in: 4..50 }
  validates :english, presence: true
end
