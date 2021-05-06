# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Actor.create(first_name: "Daniel", last_name: "Radcliffe", known_for: "Harry Potter")

# Actor.create(first_name: "Taika", last_name: "Waititi", known_for: "Thor: Ragnarok (director, actor)")

# Actor.create(first_name: "Tessa", last_name: "Thompson", known_for: "Thor: Ragnarok")

# Actor.create(first_name: "Chris", last_name: "Hemsworth", known_for: "Thor, Thor: Ragnarok, Avengers, Extraction")

# Actor.create(first_name: "Tom", last_name: "Hanks", known_for: "Cast Away")

# Actor.create(first_name: "Ben", last_name: "Stiller", known_for: "Zoolander, Heavyweights, Along Came Polly")

# require "ffaker"

# 10.times do
#   Actor.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title)
# end

Movie.create(title: "Spirited Away", year: 2001, plot: "During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.")

Movie.create(title: "Princess Mononoke", year: 1997 , plot: "On a journey to find the cure for a Tatarigami's curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, the Mononoke Hime.")

Movie.create(title: "My Neighbor Totoro", year: 1988  , plot: "When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby.")

Movie.create(title: "Howl's Moving Castle", year: 2004 , plot: "When an unconfident young woman is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking castle.")