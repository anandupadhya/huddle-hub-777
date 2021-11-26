# require 'faker'

# # Destroy records, DO NOT change the order
# Profile.destroy_all
# Collaboration.destroy_all
# Project.destroy_all
# Category.destroy_all
# User.destroy_all

# # create! users
# count = 0
# 50.times do
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#   email = Faker::Internet.email
#   username = Faker::Internet.username
#   password = "test1234"
#   user =  User.create!(first_name: first_name, last_name: last_name, email: email, username: username, password: password)
#   p user.profile.address = Faker::Nation.capital_city
#   sleep 1
#   p user.profile.save
#   p User.find(user.id).profile
#   count += 1
#   if user.profile.latitude.nil?
#     user.profile.destroy
#     user.destroy
#     count -= 1
#     p "Destroyed"
#   end
# end
# puts count

# categories = ['Graphics & Design', 'Digital Marketing', 'Writing & Translation', 'Video & Animation',
#               'Music & Audio', 'Programming & Tech', 'Data', 'Business', 'Lifestyle']

# categories.each do |category|
#   Category.create!(name: category, color_code: Faker::Color.hex_color)
# end


# create! projects (LOREM IPSUM)
# 20.times do
#   name = Faker::Lorem.sentence(word_count: 3).downcase
#   description = Faker::Lorem.sentence
#   details = Faker::Lorem.question(word_count: 50)
#   status = "open"
#   user = User.all.sample
#   category = Category.all.sample
#   p Project.create!(name: name, description: description, details: details, status: status, user: user, category: category)
# end

# Graphics & Design
10.times do
  name = Faker::Lorem.sentence(word_count: 3).downcase
  description = Faker::Lorem.sentence
  details = Faker::Lorem.question(word_count: 50)
  status = "open"
  user = User.all.sample
  category = Category.all.sample
  p Project.create!(name: name, description: description, details: details, status: status, user: user, category: category)
end





# # create! collaborations
# Project.all.each do |project|
#   rand(3..20).times do
#     user = User.all.sample
#     # check if the random user picked is not the same as the owner of the project
#     while user == project.user do
#       user = User.all.sample
#     end
#     p Collaboration.create(user: user, project: project, status: "accepted")
#   end
# end
