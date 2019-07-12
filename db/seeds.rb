User.create!(name: "後藤",
             email: "emaile@sample.com",
             password: "password",
             password_confirmation: "password")

60.times do |n|
  name  = Faker::Name.name
  email = "email#{n+1}@sample.com"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end