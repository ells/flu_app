namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

   admin = User.create!(name: "example admin",
                       email: "ells@cubed.org",
                       password: "button",
                       password_confirmation: "button")

    admin.toggle!(:admin)
    User.create!(name: "Example User",
                 email: "ells@cubed.com",
                 password: "button",
                 password_confirmation: "button")

    99.times do |n|
      name  = Faker::Name.name
      email = "ells-#{n+1}@cubed.com"
      password  = "button"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end