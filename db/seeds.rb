# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create!(name: 'Luke', movie: movies.first)

# require 'faker'


# Collaboration.destroy_all
# Project.destroy_all
# Category.destroy_all
# User.destroy_all


# categories = ['Graphics & Design', 'Digital Marketing', 'Writing & Translation', 'Video & Animation',
#               'Music & Audio', 'Programming & Tech', 'Data', 'Business', 'Lifestyle']

# categories.each do |category|
#   p Category.create!(name: category, color_code: Faker::Color.hex_color)
# end

# # create! users
# 50.times do
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#   email = Faker::Internet.email
#   username = Faker::Internet.username
#   password = Faker::Internet.password
#   p User.create!(first_name: first_name, last_name: last_name, email: email, username: username, password: password)
# end

first category_Graphic & Design
20.times do
  p name = Faker::Lorem.sentence(word_count: 3).downcase

  brand = Faker::App.name
  products = ['Poster', 'Logo', 'Banner', 'Brochure']
  p name = "#{brand} #{products.sample} Design"

  # p description = Faker::Lorem.sentence

  brand = Faker::App.name
  description = ['uses brand materials', 'creates unique visual experience for clients', 'add key features']
  p description = "#{brand} #{description.sample} sign up for collabration"


  second category_Digital Marketing
# 20.times do
#   # p name = Faker::Lorem.sentence(word_count: 3).downcase

  companyname = Faker::Company.industry
  products = ['Search Engine Optimization', 'Social Media Management', 'Analytics &Tracking', 'Strategy Planning']
  p name = "#{companyname} #{products.sample} Marketing Campaign"

  # # p description = Faker::Lorem.sentence

  companyname = Faker::Company.industry
  description = ['to grow social media followers', 'to target customers with effective strategies', 'to promote business', 'fit the needs with lower cost on acquiring clients']
  p description = "#{companyname} #{description.sample} to maximize the  outcomes of marketing"

 third category_Writing & Translation
# 20.times do
#   # p name = Faker::Lorem.sentence(word_count: 3).downcase

  bookname = [Faker::Book.title , Faker::Book.publisher]
  products = ['Summary', 'Reading Recommendation', 'Translation', 'Proofreading' , 'Resume Writing']
  p name = "#{bookname.sample} #{products.sample}"

  # # p description = Faker::Lorem.sentence

  bookname = [Faker::Book.title, Faker::Book.publisher]
  description = ['provides you with multiple language translation choices ', 'writes the interesting blogs', 'write blogs on any languages', 'provides you with professional services with writing']
  p description = "#{bookname.sample} #{description.sample} to meet your needs in writing"

  fourth category_Video & Animation
  # 20.times do
  # p name = Faker::Lorem.sentence(word_count: 3).downcase


  productname = [Faker::Music.album, Faker::Movie.title,Faker::Artist.name]
  products = ['Corporate Videos', 'E-Commerce Product Videos', 'Animated GIFs', 'Visual Effects']
  p name = "#{productname.sample} #{products.sample}"

#   # # p description = Faker::Lorem.sentence

  productname = [Faker::Music.album, Faker::Movie.title, Faker::Artist.name]
  description = ['provides you with coolest visual effects for your needs ', ' advancing your video features', 'promotional video & Animation for coporate and starups', 'create amazing ads for your business through commercial videos and animations']
  p description = "#{productname.sample} #{description.sample} to meet your needs in developing your business

  # brand = Faker::App.name
  # description = ['uses brand materials', 'creates unique visual experience for clients', 'add key features']
  # p description = "#{brand} #{description.sample} sign up for collabration"

  # p details = Faker::Lorem.question(word_count: 50)
  # p status = "Open"
  # user = User.all.sample
  # category = Category.all.sample

  # p Project.create!(name: name, description: description, details: details, status: status, user: user, category: category)
end

# # create! collaborations
# Project.all.each do |project|
#   rand(1..15).times do
#     user = User.all.sample
#     while user == project.user do
#       user = User.all.sample
#     end
#     p Collaboration.create!(user: user, project: project, status: "accepted")
#   end
# end
