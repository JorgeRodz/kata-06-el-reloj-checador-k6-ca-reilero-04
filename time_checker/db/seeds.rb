require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(
  first_name: 'Omar',
  last_name: 'Perez',
  email: 'omar@gmail.com',
  password: 'omar12345'
)

# We have to create the 'Stores' first in order to apply the relation between tables
# Create Stores
Store.create(
  name: 'Store 1',
  address: 'Address 1'
)

Store.create(
  name: 'Store 2',
  address: 'Address 2'
)

Store.create(
  name: 'Store 3',
  address: 'Address 3'
)

Store.create(
  name: 'Store 4',
  address: 'Address 4'
)

Store.create(
  name: 'Store 5',
  address: 'Address 5'
)




# # Create Employees
Employee.create(
  first_name: "Employee 1",
  last_name: "Last Name 1",
  email: "employee1@hotmail.com",
  store_id: 1,
  position: "Position 1",
  private_number: 0000,
  working: true
)

Employee.create(
  first_name: "Employee 2",
  last_name: "Last Name 2",
  email: "employee2@hotmail.com",
  store_id: 2,
  position: "Position 2",
  private_number: 0000,
  working: true
)

Employee.create(
  first_name: "Employee 3",
  last_name: "Last Name 3",
  email: "employee3@hotmail.com",
  store_id: 3,
  position: "Position 3",
  private_number: 0000,
  working: true
)

Employee.create(
  first_name: "Employee 4",
  last_name: "Last Name 4",
  email: "employee4@hotmail.com",
  store_id: 4,
  position: "Position 4",
  private_number: 0000,
  working: true
)

Employee.create(
  first_name: "Employee 5",
  last_name: "Last Name 5",
  email: "employee5@hotmail.com",
  store_id: 5,
  position: "Position 5",
  private_number: 0000,
  working: true
)



# 10.times do |i|
#   puts "Creating employee #{i}"
#   first_name_variable = Faker::Name.first_name
#   store_id_variable = rand(1..5)
#   Employee.create(
#     first_name: first_name_variable,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.free_email(name: first_name_variable),
#     position: Faker::Job.title,
#     private_number: rand(1000..9999),
#     store_id: store_id_variable,
#     working: true
#   )
# end


