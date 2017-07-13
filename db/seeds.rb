User.destroy_all
Movie.destroy_all
Review.destroy_all

#created Two users
(1..2).to_a.each do |i|
  User.create(email:"honestraj.it#{i}@gmail.com",password:"12345678")
end

#Totally we have 20 movies
(1..20).to_a.each do |i|
  Movie.create(title:"Movie#{i}",description:"Description#{i}",movie_length:"2 hours",director:"Shan Rolden",rating:"Something",user_id:"#{i<=10 ? 1 : 2}")
end

#First2 movies have a 5 reviews
(1..10).to_a.each do |i|
  Review.create(rating:3,comment:"comment #{i}",user_id:"#{i<=5 ? 1 : 2}",movie_id:"#{i<=5 ? 1 : 2}")
end


