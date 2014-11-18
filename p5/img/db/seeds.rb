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

imgob =  ImgOb.create(
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

tag =  Tag.create(
	[
		{tag: ‘funny’, imgob_id: imgobs[0].id},
		{tag: ‘funny’,  imgob_id: imgobs[1].id},
		{tag: ‘lol’, imgob_id: imgobs[1].id},
		{tag: ‘lmao’, imgob_id: imgobs[1].id},
		{tag: ‘funny’,  imgob_id: imgobs[2].id},
		{tag: ‘lol’,  imgob_id: imgobs[2].id},
		{tag: ‘silly’, imgob_id: imgobs[3].id},
		{tag: ‘cats’, imgob_id: imgobs[3].id},
		{tag: ‘kitty’, imgob_id: imgobs[3].id},
		{tag: ‘funny’,  imgob_id: imgobs[3].id},
		{tag: ‘money’, imgob_id: imgobs[3].id},
		{tag: ‘art’, imgob_id: imgobs[4].id},
		{tag: ‘cats’, imgob_id: imgobs[5].id},
		{tag: ‘kitty’, imgob_id: imgobs[5].id},
		{tag: ‘genius’, imgob_id: imgobs[6].id},
		{tag: ‘funny’, imgob_id: imgobs[6].id},
		{tag: ‘wow’, imgob_id: imgobs[6].id},
		{tag: ‘silly’, imgob_id: imgobs[6].id}
	]
)

imgauth =  ImgAuth.create(
	[
		{usr_id: usrs[1].id, imgob_id: imgobs[3].id},
		{usr_id: usrs[2].id,  imgob_id: imgobs[5].id},
		{usr_id: usrs[5].id , imgob_id: imgobs[5].id},
		{usr_id: usrs[3].id,  imgob_id: imgobs[8].id},
		{usr_id: usrs[6].id,  imgob_id: imgobs[8].id},
		{usr_id: usrs[4].id, imgob_id: imgobs[11].id},
		{usr_id: usrs[6].id,  imgob_id: imgobs[14].id},
		{usr_id: usrs[4].id, imgob_id: imgobs[14].id},
		{usr_id: usrs[5].id, imgob_id: imgobs[14].id}

	]
)

