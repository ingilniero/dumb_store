# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
address = Address.create street: '1600 Amphitheatre Pkwy', city: 'Mountain View', state: 'California', zip: '94043'
provider = Provider.create name: 'Google', address: 'google@gmail.com', address: address
Product.create name: 'Nexus 4', provider: provider, price: 400, description: 'Google phone'
