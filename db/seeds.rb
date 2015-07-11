# Create generic users 
100.times do |n|
	email       					= Faker::Internet.email 
	username    					= Faker::Lorem.word 
	password    					= 'password' 
	password_confirmation = 'password' 
	reset_password_token  = Faker::Lorem.word 
	id 										= n
	role 									= "user"

	User.create!(
		email: 									email,
		username: 							username,
		password: 							password,
		password_confirmation: 	password_confirmation,
		reset_password_token:   reset_password_token,
		id: 										id,
		role:                   role  			
	)
end 

# Create admin user (modify/change/delete anything and create categories)
User.create!(
	email:     							"tim.kellogg@gmail.com",
	username: 							"tkellogg",
	password: 							"password", 
	password_confirmation:  "password",
	reset_password_token:   Faker::Lorem.word,
	id:                     101,
	role:                   "admin"
)

# Create moderator user (modify and delete comments)
User.create!(
	email: 									"moderator@community.com",
	username:  							"moderator",
	password: 							"password", 
	password_confirmation:  "password",
	reset_password_token:   Faker::Lorem.word,
	id: 										102, 
	role: 									"mod"
)


TITLES = %w[front girls sports politics religion programming writing learnprogramming hunting jews]		

# Create Categories 
10.times do |n|

	subscribers      = rand(1..99)
	description  		 = Faker::Lorem.paragraph(30)
  
	Category.create!(
		title:          TITLES.pop,
		subscribers:    subscribers,
		description:    description
	)
end

# Create Posts 
100.times do |n|
	title  		  = Faker::Lorem.sentence  
	link        = Faker::Company.bs 
	content     = Faker::Lorem.paragraph(30)
	upvotes     = Faker::Number.between(1, 2500)
	downvotes   = Faker::Number.between(0, -2500)
	rank        = upvotes + downvotes
	user_id    	= n
	img_url     = Faker::Avatar.image 
	category_id = rand(1..10)

	Post.create!(
		title: 				title,
		link: 				link,
		content:      content, 
		upvotes: 			upvotes,
		downvotes: 		downvotes,
		rank: 				rank,
		user_id: 			user_id, 
		img_url: 			img_url,
		category_id:  category_id
	)
end  

# Create Comments 








