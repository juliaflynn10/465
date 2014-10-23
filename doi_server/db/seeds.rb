# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    fingerprints = Fingerprint.create([
	{name: "Barbie", about: "The best site ever OMG"},
	{name: "4Chan", about: "Whatever you want it to be"},
	{name: "Adobe Kuler", about: "Kuler than you'll ever be"},
	{name: "4096", about: "Procrastination aid"}
    ])

    links = Link.create([
	{address: "www.barbie.com", fingerprint_id: fingerprints[0].id },
	{address: "www.4chan.org", fingerprint_id: fingerprints[1].id },
	{address: "www.color.adobe.com", fingerprint_id: fingerprints[2].id },
	{address: "martijnkorteweg.github.io/4096/", fingerprint_id: fingerprints[3].id },
	{address: "www.barbie.com", fingerprint_id: fingerprints[0].id },
        {address: "www.4chan.org", fingerprint_id: fingerprints[1].id },
        {address: "www.color.adobe.com", fingerprint_id: fingerprints[2].id },
        {address: "martijnkorteweg.github.io/4096/", fingerprint_id: fingerprints[3].id },
	{address: "www.barbie.com", fingerprint_id: fingerprints[0].id },
        {address: "www.4chan.org", fingerprint_id: fingerprints[1].id },
        {address: "www.color.adobe.com", fingerprint_id: fingerprints[2].id },
	{address: "martijnkorteweg.github.io/4096/", fingerprint_id: fingerprints[3].id },
	{address: "www.barbie.com", fingerprint_id: fingerprints[0].id },
        {address: "www.4chan.org", fingerprint_id: fingerprints[1].id },
        {address: "www.color.adobe.com", fingerprint_id: fingerprints[2].id },      	  {address: "martijnkorteweg.github.io/4096/", fingerprint_id: fingerprints[3].id },
	{address: "www.barbie.com", fingerprint_id: fingerprints[0].id },
        {address: "www.4chan.org", fingerprint_id: fingerprints[1].id },
        {address: "www.color.adobe.com", fingerprint_id: fingerprints[2].id },        	  {address: "martijnkorteweg.github.io/4096/", fingerprint_id: fingerprints[3].id },
	{address: "www.barbie.com", fingerprint_id: fingerprints[0].id },
        {address: "www.4chan.org", fingerprint_id: fingerprints[1].id },
        {address: "www.color.adobe.com", fingerprint_id: fingerprints[2].id },        	  {address: "martijnkorteweg.github.io/4096/", fingerprint_id: fingerprints[3].id }
])
