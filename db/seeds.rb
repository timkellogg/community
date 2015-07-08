100.times do |n|
	email       					= Faker::Internet.email 
	username    					= Faker::Lorem.word 
	password    					= 'password' 
	password_confirmation = 'password' 
	reset_password_token  = Faker::Lorem.word 
	id 										= n

	User.create!(
		email: 									email,
		username: 							username,
		password: 							password,
		password_confirmation: 	password_confirmation,
		reset_password_token:   reset_password_token,
		id: id 			
	)
end 

100.times do |n|
	title  		  = Faker::Lorem.sentence  
	link        = Faker::Company.bs 
	content     = Faker::Lorem.paragraph(30)
	upvotes     = Faker::Number.between(1, 2500)
	downvotes   = Faker::Number.between(0, -2500)
	rank        = upvotes + downvotes
	user_id    	= n
	img_url     = Faker::Avatar.image 

	Post.create!(
		title: 				title,
		link: 				link,
		content:      content, 
		upvotes: 			upvotes,
		downvotes: 		downvotes,
		rank: 				rank,
		user_id: 			user_id, 
		img_url: 			img_url
	)
end  

