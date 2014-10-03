# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Listing.create( name: 'Burnside Skatepark',
                street: '100 SE Ankeny',
                city: 'Portland',
                state: 'Oregon',
                zip: '97211',
                description: 'Legendary park.')

Listing.create( name: 'Newberg Skatepark',
                street: '100 SE Ankeny',
                city: 'Newberg',
                state: 'Oregon',
                zip: '97211',
                description: 'Legendary park.')

Listing.create( name: 'Ed Benedict Skate Plaza',
                street: '92nd & SE Powell',
                city: 'Portland',
                state: 'Oregon',
                zip: '97211',
                description: 'Street skating plaza.')
