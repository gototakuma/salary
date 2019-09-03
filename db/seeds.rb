User.create!(name: "後藤",
             email: "email@sample.com",
             password: "password",
             password_confirmation: "password",
             recharge: 1030000,
             basic_salary: 1000,
             night_salary: 1300,
             admin: true)

5.times do |n|
  name  = Faker::Name.name
  email = "email#{n+1}@sample.com"
  recharge = 1030000
  basic_salary = 1000
  night_salary = 1300
  password = "password"
  User.create!(name: name,
               email: email,
               recharge: recharge,
               basic_salary: basic_salary,
               night_salary: night_salary,
               password: password,
               password_confirmation: password)
end