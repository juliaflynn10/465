# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(
        [
                { fname:'Stephen', lname:'Fry', email:'imwhatwillisistalkingabout@gmail.com', encrypted_password:'thugg!n'},
                { fname:'Jack', lname:'Nicholson', email:'2kule4rulez@gmail.com', encrypted_password:'po$$y'},
                { fname:'Queen', lname:'Bey', email:'iwokeuplikethis@gmail.com', encrypted_password:'fl*wless'},
                { fname:'Hunter', lname:'Thompson', email:'nothing2lose@gmail.com', encrypted_password:'st0ckt0n'},
                { fname:'Lil', lname:'Wayne', email:'youngmoney@gmail.com', encrypted_password:'CREAM'},
                { fname:'Orbit', lname:'Britson', email:'lintlicker@gmail.com', encrypted_password:'solarsystem'},
                { fname:'No', lname:'Nah', email:'no@gmail.com', encrypted_password:'no'}

        ]
)

image_object =  ImageObject.create(
	[
		{filename: '00.jpg', private:false, user_id: users[0].id},
		{filename: '10.jpg', private:false, user_id: users[1].id},
		{filename: '11.jpg', private:false, user_id: users[1].id},
		{filename: '12.jpg', private:true, user_id: users[1].id},
		{filename: '20.jpg', private:false, user_id: users[2].id},
		{filename: '21.jpg', private:true, user_id: users[2].id},
		{filename: '30.jpg', private:false, user_id: users[3].id},
		{filename: '31.jpg', private:false, user_id: users[3].id},
		{filename: '32.jpg', private:true, user_id: users[3].id},
		{filename: '33.jpg', private:false, user_id: users[3].id},
		{filename: '34.jpg', private:false, user_id: users[3].id},
		{filename: '40.jpg', private:true, user_id: users[4].id},
		{filename: '50.jpg', private:false, user_id: users[5].id},
		{filename: '51.jpg', private:false, user_id: users[5].id},
		{filename: '60.jpg', private:true, user_id: users[6].id},
		{filename: '61.jpg', private:false, user_id: users[6].id},
		{filename: '62.jpg', private:false, user_id: users[6].id},
		{filename: '63.jpg', private:false, user_id: users[6].id}
	]
)

tag_object =  TagObject.create(
	[
		{tag_string: ‘funny’, image_object_id: image_objects[0].id},
		{tag_string: ‘funny’, image_object_id: image_objects[1].id},
		{tag_string: ‘lol’, image_object_id: image_objects[1].id},
		{tag_string: ‘lmao’, image_object_id: image_objects[1].id},
		{tag_string: ‘funny’,  image_object_id: image_objects[2].id},
		{tag_string: ‘lol’,  image_object_id: image_objects[2].id},
		{tag_string: ‘silly’, image_object_id: image_objects[3].id},
		{tag_string: ‘cats’, image_object_id: image_objects[3].id},
		{tag_string: ‘kitty’, image_object_id: image_objects[3].id},
		{tag_string: ‘funny’,  image_object_id: image_objects[3].id},
		{tag_string: ‘money’, image_object_id: image_objects[3].id},
		{tag_string: ‘art’, image_object_id: image_objects[4].id},
		{tag_string: ‘cats’, image_object_id: image_objects[5].id},
		{tag_string: ‘kitty’, image_object_id: image_objects[5].id},
		{tag_string: ‘genius’, image_object_id: image_objects[6].id},
		{tag_string: ‘funny’, image_object_id: image_objects[6].id},
		{tag_string: ‘wow’, image_object_id: image_objects[6].id},
		{tag_string: ‘silly’, image_object_id: image_objects[6].id}
	]
)

image_user = ImageUser.create(
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

