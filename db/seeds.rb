User.create!(name: "後藤",
             email: "email@sample.com",
             recharge: 1030000,
             basic_salary: 1000,
             password: "password",
             password_confirmation: "password",
             admin: true)

5.times do |n|
  name  = Faker::Name.name
  email = "email#{n+1}@sample.com"
  recharge = 1030000
  basic_salary = 1000
  password = "password"
  User.create!(name: name,
               email: email,
               recharge: recharge,
               basic_salary: basic_salary,
               password: password,
               password_confirmation: password)
end