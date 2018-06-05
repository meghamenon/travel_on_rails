# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
Blog.destroy_all
User.destroy_all
User.create({name: "Mark", date_joined: Date.today, address: "225 Bush St",
	user_img_url: " ", password_digest: "1234", email: "user@domain.com", username: "markdsouza"})
City.destroy_all
City.create({name: "San Francisco", state: "CA", city_img_url: "https://dr5dymrsxhdzh.cloudfront.net/blog/images/a18498/2015/04/SanFrancisco.jpg"})
=end
City.create({name: "New York City", state: "NY", city_img_url: "https://dr5dymrsxhdzh.cloudfront.net/blog/images/a18498/2015/04/SanFrancisco.jpg"})
