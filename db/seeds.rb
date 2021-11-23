# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

require 'faker'


Collaboration.destroy_all
Project.destroy_all
Category.destroy_all
User.destroy_all


categories = ['Graphics & Design', 'Digital Marketing', 'Writing & Translation', 'Video & Animation',
              'Music & Audio', 'Programming & Tech', 'Data', 'Business', 'Lifestyle']

categories.each do |category|
  p Category.create!(name: category, color_code: Faker::Color.hex_color)
end

# create! users
50.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  username = Faker::Internet.username
  password = Faker::Internet.password
  p User.create!(first_name: first_name, last_name: last_name, email: email, username: username, password: password)
end

# create! projects
20.times do
  name = Faker::Lorem.sentence(word_count: 3).downcase
  description = Faker::Lorem.sentence
  details = Faker::Lorem.question(word_count: 50)
  status = "Open"
  user = User.all.sample
  category = Category.all.sample

  p Project.create!(name: name, description: description, details: details, status: status, user: user, category: category)
end

# create! collaborations
Project.all.each do |project|
  rand(1..15).times do
    user = User.all.sample
    while user == project.user do
      user = User.all.sample
    end
    p Collaboration.create!(user: user, project: project, status: "accepted")
  end
end
