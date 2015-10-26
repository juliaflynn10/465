# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create(
        [
                { name:'Stephen Fry', email:'imwhatwillisistalkingabout@gmail.com', password:'thugg1n', password_confirmation:'thugg1n'},
                { name:'Jack Nicholson', email:'2kule4rulez@gmail.com', password:'po55y', password_confirmation:'po55y'},
                { name:'Queen Bey', email:'iwokeuplikethis@gmail.com', password:'fl4wless', password_confirmation:'fl4wless'},
                { name:'Hunter Thompson', email:'nothing2lose@gmail.com', password:'st0ckt0n', password_confirmation:'st0ckt0n'},
                { name:'Lil Wayne', email:'youngmoney@gmail.com', password:'CREAM', password_confirmation:'CREAM'},
                { name:'Orbit Britson', email:'lintlicker@gmail.com', password:'solarsystem', password_confirmation:'solarsystem'},
                { name:'No Nah', email:'no@gmail.com', password:'no', password_confirmation:'no'}

        ]
)

image_objects =  ImageObject.create(
	[
		{filename: '00.jpg', public:false, user_id: users[0].id},
		{filename: '10.jpg', public:false, user_id: users[1].id},
		{filename: '11.jpg', public:false, user_id: users[1].id},
		{filename: '12.jpg', public:true, user_id: users[1].id},
		{filename: '20.jpg', public:false, user_id: users[2].id},
		{filename: '21.jpg', public:true, user_id: users[2].id},
		{filename: '30.jpg', public:false, user_id: users[3].id},
		{filename: '31.jpg', public:false, user_id: users[3].id},
		{filename: '32.jpg', public:true, user_id: users[3].id},
		{filename: '33.jpg', public:false, user_id: users[3].id},
		{filename: '34.jpg', public:false, user_id: users[3].id},
		{filename: '40.jpg', public:true, user_id: users[4].id},
		{filename: '50.jpg', public:false, user_id: users[5].id},
		{filename: '51.jpg', public:false, user_id: users[5].id},
		{filename: '60.jpg', public:true, user_id: users[6].id},
		{filename: '61.jpg', public:false, user_id: users[6].id},
		{filename: '62.jpg', public:false, user_id: users[6].id},
		{filename: '63.jpg', public:false, user_id: users[6].id}
	]
)

tag_objects =  TagObject.create(
	[
		{tag_string: 'funny', image_object_id: image_objects[0].id},
		{tag_string: 'funny', image_object_id: image_objects[1].id},
		{tag_string: 'lol', image_object_id: image_objects[1].id},
		{tag_string: 'lmao', image_object_id: image_objects[1].id},
		{tag_string: 'funny',  image_object_id: image_objects[2].id},
		{tag_string: 'lol',  image_object_id: image_objects[2].id},
		{tag_string: 'silly', image_object_id: image_objects[3].id},
		{tag_string: 'cats', image_object_id: image_objects[3].id},
		{tag_string: 'kitty', image_object_id: image_objects[3].id},
		{tag_string: 'funny',  image_object_id: image_objects[3].id},
		{tag_string: 'money', image_object_id: image_objects[3].id},
		{tag_string: 'art', image_object_id: image_objects[4].id},
		{tag_string: 'cats', image_object_id: image_objects[5].id},
		{tag_string: 'kitty', image_object_id: image_objects[5].id},
		{tag_string: 'genius', image_object_id: image_objects[6].id},
		{tag_string: 'funny', image_object_id: image_objects[6].id},
		{tag_string: 'wow', image_object_id: image_objects[6].id},
		{tag_string: 'silly', image_object_id: image_objects[6].id}
	]
)

image_users = ImageUser.create(
	[
		{user_id: users[1].id, image_object_id: image_objects[3].id},
		{user_id: users[2].id, image_object_id: image_objects[5].id},
		{user_id: users[5].id, image_object_id: image_objects[5].id},
		{user_id: users[3].id, image_object_id: image_objects[8].id},
		{user_id: users[6].id, image_object_id: image_objects[8].id},
		{user_id: users[4].id, image_object_id: image_objects[11].id},
		{user_id: users[6].id, image_object_id: image_objects[14].id},
		{user_id: users[4].id, image_object_id: image_objects[14].id},
		{user_id: users[5].id, image_object_id: image_objects[14].id}

	]
)


