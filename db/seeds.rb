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
	description = Faker::Lorem.paragraph
	upvotes     = Faker::Number.between(1, 2500)
	downvotes   = Faker::Number.between(0, -2500)
	rank        = upvotes + downvotes
	user_id    	= n

	Post.create!(
		title: 				title,
		link: 				link,
		description: 	description,
		upvotes: 			upvotes,
		downvotes: 		downvotes,
		rank: 				rank,
		user_id: 			user_id 
	)
end  

