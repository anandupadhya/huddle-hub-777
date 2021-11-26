# require 'faker'

# # Destroy records, DO NOT change the order
Profile.destroy_all
Collaboration.destroy_all
Project.destroy_all
Category.destroy_all
User.destroy_all

# # create! users
count = 0
30.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  username = Faker::Internet.username
  password = "test1234"
  user =  User.create!(first_name: first_name, last_name: last_name, email: email, username: username, password: password)
  p user.profile.address = Faker::Nation.capital_city
  sleep 1
  p user.profile.save
  p User.find(user.id).profile
  count += 1
  if user.profile.latitude.nil?
    user.profile.destroy
    user.destroy
    count -= 1
    p "Destroyed"
  end
end
puts count

categories = ['Graphics & Design', 'Digital Marketing', 'Writing & Translation', 'Video & Animation',
              'Music & Audio', 'Programming & Tech', 'Data', 'Business', 'Lifestyle']

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
category = Category.create!(name: "Graphics & Design", color_code: Faker::Color.hex_color)
rand(5..20).times do
  brand = Faker::Movie.title
  products = ['Poster', 'Logo', 'Banner', 'Brochure']
  name = "#{brand} #{products.sample} Design #{rand(1..1000)}"
  phrases = ['uses brand materials', 'creates unique visual experience for clients', 'add key features']
  description = "#{brand} #{phrases.sample} sign up for collabration".truncate(30)
  details = Faker::Lorem.question(word_count: 50)
  status = "open"
  user = User.all.sample
  p Project.create!(name: name, description: description, details: details, status: status, user: user, category: category)
end

# Digital Marketing
category = Category.create!(name: "Digital Marketing", color_code: Faker::Color.hex_color)
rand(5..20).times do
  brand = Faker::Company.industry
  products = ['Search Engine Optimization', 'Social Media Management', 'Analytics &Tracking', 'Strategy Planning']
  name = "#{brand} #{products.sample} #{rand(1..1000)}"
  phrases = ['to grow social media followers', 'to target customers with effective strategies', 'to promote business', 'fit the needs with lower cost on acquiring clients']
  description = "#{brand} #{phrases.sample} sign up for collabration".truncate(30)
  details = Faker::Lorem.question(word_count: 50)
  status = "open"
  user = User.all.sample
  p Project.create!(name: name, description: description, details: details, status: status, user: user, category: category)
end

# Writing & Translation
category = Category.create!(name: "Writing & Translation", color_code: Faker::Color.hex_color)
rand(5..20).times do
  brand = [Faker::Book.title , Faker::Book.publisher]
  products = ['Summary', 'Reading Recommendation', 'Translation', 'Proofreading' , 'Resume Writing']
  name = "#{brand.sample} #{products.sample} #{rand(1..1000)}"
  phrases = ['provides you with multiple language translation choices ', 'writes the interesting blogs', 'write blogs on any languages', 'provides you with professional services with writing']
  description = "#{brand.sample} #{phrases.sample}".truncate(30)
  details = Faker::Lorem.question(word_count: 50)
  status = "open"
  user = User.all.sample
  p Project.create!(name: name, description: description, details: details, status: status, user: user, category: category)
end

# Video & Animation
category = Category.create!(name: "Video & Animation", color_code: Faker::Color.hex_color)
rand(5..20).times do
  brand = [Faker::Music.album, Faker::Movie.title,Faker::Artist.name]
  products = ['Corporate Videos', 'E-Commerce Product Videos', 'Animated GIFs', 'Visual Effects']
  name = "#{brand.sample} #{products.sample} #{rand(1..1000)}}"
  phrases = ['provides you with coolest visual effects for your needs ', ' advancing your video features', 'promotional video & Animation for coporate and starups', 'create amazing ads for your business through commercial videos and animations']
  description = "#{brand.sample} #{phrases.sample}".truncate(30)
  details = Faker::Lorem.question(word_count: 50)
  status = "open"
  user = User.all.sample
  p Project.create!(name: name, description: description, details: details, status: status, user: user, category: category)
end

# Music & Audio
category = Category.create!(name: "Music & Audio", color_code: Faker::Color.hex_color)
rand(5..20).times do
  brand = [Faker::Music.album, Faker::Movie.title,Faker::Artist.name]
  products = ['Corporate Videos', 'E-Commerce Product Videos', 'Animated GIFs', 'Visual Effects']
  name = "#{brand.sample} #{products.sample} #{rand(1..1000)}"
  phrases = ['provides you with coolest visual effects for your needs ', ' advancing your video features', 'promotional video & Animation for coporate and starups', 'create amazing ads for your business through commercial videos and animations']
  description = "#{brand.sample} #{phrases.sample}".truncate(30)
  details = Faker::Lorem.question(word_count: 50)
  status = "open"
  user = User.all.sample
  p Project.create!(name: name, description: description, details: details, status: status, user: user, category: category)
end

# Programming & Tech
category = Category.create!(name: "Programming & Tech", color_code: Faker::Color.hex_color)
rand(5..20).times do
  brand =  ['Shopify', 'WooCommerce', 'Magento', 'Prestashop', 'Opencart', 'Bigcommerce', 'Wix', 'Shopware', 'Oscommerce']
  products = ['Corporate', 'E-Commerce', 'CS', 'DB', 'Backend', 'System']
  name = "#{brand.sample} #{products.sample} Development #{rand(1..1000)}"
  phrases = ['Speed', 'Performance', 'Realization', 'Achievement']
  description = "#{phrases.sample} oriented approach".truncate(30)
  details = Faker::Lorem.question(word_count: 50)
  status = "open"
  user = User.all.sample
  p Project.create!(name: name, description: description, details: details, status: status, user: user, category: category)
end

# Data
category = Category.create!(name: "Data", color_code: Faker::Color.hex_color)
rand(5..20).times do
  brand =  ['Shopify', 'WooCommerce', 'Magento', 'Prestashop', 'Opencart', 'Bigcommerce', 'Wix', 'Shopware', 'Oscommerce']
  products = ['Corporate', 'E-Commerce', 'CS', 'DB', 'Backend', 'System']
  name = "#{brand.sample} #{products.sample} #{rand(1..1000)}"
  phrases = ['Big Data', 'Data Science']
  description = "#{brand.sample} #{phrases.sample} #{rand(1..100)}} project".truncate(30)
  details = Faker::Lorem.question(word_count: 50)
  status = "open"
  user = User.all.sample
  p Project.create!(name: name, description: description, details: details, status: status, user: user, category: category)
end

# Business
category = Category.create!(name: "Business", color_code: Faker::Color.hex_color)
rand(5..20).times do
  brand =  [Faker::Company.industry, Faker::Company.name,Faker::Commerce.department]
  products = ['Event Planning', 'Management system installation', 'Pitch Drafting', 'IT Supports']
  name = "#{brand.sample} #{products.sample} #{rand(1..1000)}"
  phrases = ['monitor and maintain the computer systems and networks of your organisation', 'have solid track record of delivering projects that have had proven business benefits', 'utilise business techniques to back up your business.
  ']
  description = "#{brand.sample} #{phrases.sample} to meet your needs in developing your business".truncate(30)
  details = Faker::Lorem.question(word_count: 50)
  status = "open"
  user = User.all.sample
  p Project.create!(name: name, description: description, details: details, status: status, user: user, category: category)
end

# Lifestyle
category = Category.create!(name: "Lifestyle", color_code: Faker::Color.hex_color)
rand(5..20).times do
  brand =  ['Modeling', 'Acting', 'Dance', 'Cooking', 'Craft', 'Wellness', 'Fitness', 'Astrology', 'Psychics']
  products = ['Event', 'Consultancy', '1 on 1', '101', 'Organization', 'Gathering', 'Workshop', 'Session']
  name = "#{brand.sample} #{products.sample} #{rand(1..1000)}"
  phrases = ['Elite experience for your future goals', 'Invest your future', 'Great start to become a better version of yourself']
  description = "#{phrases.sample}".truncate(30)
  details = Faker::Lorem.question(word_count: 50)
  status = "open"
  user = User.all.sample
  p Project.create!(name: name, description: description, details: details, status: status, user: user, category: category)
end







# create! collaborations
Project.all.each do |project|
  rand(3..20).times do
    user = User.all.sample
    # check if the random user picked is not the same as the owner of the project
    while user == project.user do
      user = User.all.sample
    end
    p Collaboration.create(user: user, project: project, status: "accepted")
  end
end
