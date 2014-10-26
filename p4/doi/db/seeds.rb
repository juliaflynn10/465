# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fingerprints = Fingerprint.create([
	{name: 'Hot Wheels', description: 'Car Games, Toy Cars & Cool Videos', doi: ''},
	{name: 'Cat Videos', description: 'Home', doi: ''},
	{name: 'Netflix', description: 'Life Ruiner', doi: ''},
	{name: 'LouisCK.net', description: 'Buy some useless shit and support my comedy', doi: ''}
	])

sites = Site.create([
	{site: 'hotwheels.com',  fingerprint_id: fingerprints[0].id},
	{site: 'hotwheels.com',  fingerprint_id: fingerprints[0].id},
	{site: 'hotwheels.com',  fingerprint_id: fingerprints[0].id},
	{site: 'louisck.new',  fingerprint_id: fingerprints[3].id},
	{site: 'catvideos.com',  fingerprint_id: fingerprints[1].id},
	{site: 'Netflix',  fingerprint_id: fingerprints[2].id}
])


