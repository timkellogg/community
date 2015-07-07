100.times do |n|
	title  		  = Faker::Lorem.sentence  
	link        = Faker::Company.bs 
	description = Faker::Lorem.paragraph
	upvotes     = Faker::Number.between(1, 2500)
	downvotes   = Faker::Number.between(0, -2500)
	rank        = upvotes + downvotes
	Post.create!(
		title: title,
		link: link,
		description: description,
		upvotes: upvotes,
		downvotes: downvotes,
		rank: rank  
	)
end  
