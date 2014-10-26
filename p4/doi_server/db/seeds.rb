# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fingerprints = Fingerprint.create(
  [
	{ name: 'Google', description: 'Search Engine'},
	{ name: '4Chan', description: 'A way of life'},
	{ name: 'Barbie', description: 'All these careers and everyone is just looking at my bod. C’mon now!'},
	{ name: 'Flawless***', description: 'Beyonce Flawless Remix'},
 	{ name: 'YouTube', description: 'Cats'},
	{ name: 'Chico State', description: 'Be cool, stay in school'},
	{ name: 'Code School', description: 'Zombies and shit'},
	{ name: 'Kanye West', description: 'Hurry up with my damn croissant!'},
	{ name: 'Buscemeyes', description: 'Chicks with Steve Buscemi eyes'},
 	{ name: 'Ikea', description: 'Germans . . .'},
	{ name: 'Target', description: 'Snooty Walmart'}
)

sites = Site.create(
  [
	{ url: 'google.com', fingerprint_id: fingerprints[0].id},
	{ url: 'youtube.com', fingerprint_id: fingerprints[4].id},
	{ url: 'google.com', fingerprint_id: fingerprints[0].id},
	{ url: 'google.com', fingerprint_id: fingerprints[0].id},
	{ url: 'google.com', fingerprint_id: fingerprints[0].id},
	{ url: 'csuchico.edu', fingerprint_id: fingerprints[5].id},
	{ url: 'google.com', fingerprint_id: fingerprints[0].id},
	{ url: 'youtube.com', fingerprint_id: fingerprints[4].id},
	{ url: 'google.com', fingerprint_id: fingerprints[0].id},
	{ url: '4chan.org', fingerprint_id: fingerprints[1].id},
	{ url: 'target.com', fingerprint_id: fingerprints[10].id},
	{ url: 'barbie.com', fingerprint_id: fingerprints[2].id},
	{ url: 'barbie.com', fingerprint_id: fingerprints[2].id},
	{ url: 'flawless.beyonce.com', fingerprint_id: fingerprints[3].id},
	{ url: 'barbie.com', fingerprint_id: fingerprints[2].id},
	{ url: 'csuchico.edu', fingerprint_id: fingerprints[5].id},
	{ url: 'csuchico.edu', fingerprint_id: fingerprints[5].id},
	{ url: 'csuchico.edu', fingerprint_id: fingerprints[5].id},
	{ url: 'barbie.com', fingerprint_id: fingerprints[2].id},
	{ url: 'barbie.com', fingerprint_id: fingerprints[2].id},
{ url: 'flawless.beyonce.com', fingerprint_id: fingerprints[3].id},

	{ url: 'codeschool.com', fingerprint_id: fingerprints[6].id},
	{ url: 'barbie.com', fingerprint_id: fingerprints[2].id},
	{ url: 'flawless.beyonce.com', fingerprint_id: fingerprints[3].id},
	{ url: 'google.com', fingerprint_id: fingerprints[0].id},
	{ url: 'google.com', fingerprint_id: fingerprints[0].id},
	{ url: 'flawless.beyonce.com', fingerprint_id: fingerprints[3].id},
	{ url: '4chan.org', fingerprint_id: fingerprints[1].id},
	{ url: '4chan.org', fingerprint_id: fingerprints[1].id},
	{ url: '4chan.org', fingerprint_id: fingerprints[1].id},
	{ url: 'ikea.com', fingerprint_id: fingerprints[9].id},
	{ url: 'ikea.com', fingerprint_id: fingerprints[9].id},
	{ url: 'ikea.com', fingerprint_id: fingerprints[9].id},
	{ url: 'ikea.com', fingerprint_id: fingerprints[9].id},
	{ url: 'ikea.com', fingerprint_id: fingerprints[9].id},
	{ url: 'ikea.com', fingerprint_id: fingerprints[9].id},
	{ url: '4chan.org', fingerprint_id: fingerprints[1].id},
	{ url: 'youtube.com', fingerprint_id: fingerprints[4].id},
	{ url: 'youtube.com', fingerprint_id: fingerprints[4].id},
	{ url: 'youtube.com', fingerprint_id: fingerprints[4].id},
	{ url: 'youtube.com', fingerprint_id: fingerprints[4].id},
	{ url: 'codeschool.com', fingerprint_id: fingerprints[6].id},
	{ url: 'csuchico.edu', fingerprint_id: fingerprints[5].id},
	{ url: 'csuchico.edu', fingerprint_id: fingerprints[5].id},
	{ url: 'codeschool.com', fingerprint_id: fingerprints[6].id},
	{ url: 'csuchico.edu', fingerprint_id: fingerprints[5].id},
	{ url: 'csuchico.edu', fingerprint_id: fingerprints[5].id},
	{ url: 'csuchico.edu', fingerprint_id: fingerprints[5].id},
	{ url: 'kanyewest.com', fingerprint_id: fingerprints[7].id},
	{ url: 'kanyewest.com', fingerprint_id: fingerprints[7].id},
	{ url: 'csuchico.edu', fingerprint_id: fingerprints[5].id},
	{ url: 'csuchico.edu', fingerprint_id: fingerprints[5].id},
	{ url: 'kanyewest.com', fingerprint_id: fingerprints[7].id},
	{ url: 'csuchico.edu', fingerprint_id: fingerprints[5].id},
	{ url: 'chickswithstevebuscemeyes.tumblr.com', fingerprint_id: fingerprints[8].id},
	{ url: 'chickswithstevebuscemeyes.tumblr.com', fingerprint_id: fingerprints[8].id},
	{ url: 'chickswithstevebuscemeyes.tumblr.com', fingerprint_id: fingerprints[8].id},
	{ url: 'ikea.com', fingerprint_id: fingerprints[9].id},
	{ url: 'ikea.com', fingerprint_id: fingerprints[9].id},
	{ url: 'ikea.com', fingerprint_id: fingerprints[9].id},
	{ url: 'ikea.com', fingerprint_id: fingerprints[9].id},
	{ url: 'target.com', fingerprint_id: fingerprints[10].id},
	{ url: 'target.com', fingerprint_id: fingerprints[10].id},
	{ url: 'target.com', fingerprint_id: fingerprints[10].id},
	{ url: 'target.com', fingerprint_id: fingerprints[10].id}
])

