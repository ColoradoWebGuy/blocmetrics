
# Create Users
5.times do
   u = User.new(
    username: Faker::Internet.user_name,
    email:    Faker::Internet.email,
    password: Faker::Internet.password
  )
  u.skip_confirmation!
  u.save
end
users = User.all

# Throw back in my testing user
user = User.first
user.update_attributes!(
  username: 'Steven Schulte',
  email: 'shotgunsteven4@gmail.com',
  password: 'password'
)

# Create Registered Applications
10.times do
   RegisteredApplication.create!(
     name:  Faker::Company.name,
     url:   Faker::Internet.url,
     user: users.sample
   )
end
reg_apps = RegisteredApplication.all

# Create Events for the existing Registered Applications
100.times do
   Event.create!(
     name:  Faker::Lorem.word,
     registered_application: reg_apps.sample
   )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{RegisteredApplication.count} registered application created"
puts "#{Event.count} registered application created"
